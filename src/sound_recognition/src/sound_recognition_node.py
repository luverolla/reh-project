#!/usr/bin/env python3
import sys
from sound_recognition.msg import SpeechData
from sound_recognition.srv import SoundRecognition

from std_msgs.msg import String
import argparse
import json

import rospy

from time import time
import numpy as np
import os
from scipy.io.wavfile import write
from os import listdir
from os.path import isfile, join
dir_path = os.path.dirname(os.path.realpath(__file__))

from classifier import Classifier

class SoundRecognitionNode:

    def add_data(self, clf, voice):
        c = input("Do you want to add new sample (Y/N):")
        if c.lower() == 'y':
            name = input("Sound name: ").lower()

            # Storing file
            if not os.path.exists(os.path.join(dir_path,'sounds', name)):
                os.makedirs(os.path.join(dir_path,'sounds', name))

            onlyfiles = [f for f in listdir(os.path.join(dir_path,'sounds', name)) if isfile(
                join(os.path.join(dir_path,'sounds', name), f))]

            # Check for other file with the same name
            i = len(onlyfiles) + 1
            while i in onlyfiles:
                i += 1

            write(os.path.join(dir_path,'sounds', name,
                                f"{format(i, '04d')}.wav"), 16000, voice.astype(np.int16))

            clf._update_support(voice, name)

    def dataset_setup(self):
        while not rospy.is_shutdown():
            rospy.loginfo("Waiting...")
            data = rospy.wait_for_message('/speech_detection',SpeechData)
            voice = np.array(data.data)

            # Se ho altri suoni nel support set
            if len(self.clf) != 0:
                sound_label, prob, hypothesis = self.clf.predict(voice)
            else:
                # Default
                sound_label = None
                hypothesis = None
                prob = 1.0

            if sound_label is None:
                print(
                    f"Suono non riconosciuto. Ipotesi: {hypothesis} ({round(prob*100,2)}%)")
            else:
                print(f"Ho sentito: {sound_label} ({round(prob*100,2)}%)")

            self.add_data(self.clf, voice)

    def recognize(self):
        start_time = time()
        while not rospy.is_shutdown():
            if time() - start_time > 5:
                break
            rospy.loginfo("Waiting...")
            data = rospy.wait_for_message('/speech_detection',SpeechData)
            voice = np.array(data.data)

            # Se ho altri suoni nel support set
            if len(self.clf) != 0:
                sound_label, prob, hypothesis = self.clf.predict(voice)
            else:
                # Default
                sound_label = None
                hypothesis = None
                prob = 1.0

            if sound_label is None:
                print(f"Unknown sound, hypotesis: {hypothesis} ({round(prob*100,2)}%)")
                if prob > 0.7:
                    sound_label = hypothesis
            else:
                print(f"I heard: {sound_label} ({round(prob*100,2)}%)")
        
            self.pub.publish(sound_label)

    def test(self):
        while not rospy.is_shutdown():
            self.pub.publish("Test message")

    def sub_clbk(self, data):
        self.recognize()

    def start(self, setup = False):
        self.setup = setup
        print("Starting sound recognition with setup=%s" % ("Yes" if setup else "No"))
        # Server Initialization
        rospy.init_node('sound_Recognition_node', anonymous=True)
        self.pub = rospy.Publisher('soundrec', String, queue_size=10)

        rospy.loginfo("clf loading...")
        self.clf = Classifier(os.path.join(dir_path,'sounds'), os.path.join(dir_path,'weights','WavLM-Large.pt'),threshold=0.9)
        rospy.loginfo("clf ok")
        
        if setup:
            self.dataset_setup()
        else:
            rospy.Subscriber("soundrec_trig", String, self.sub_clbk)
            rospy.spin()

if __name__ == "__main__":
    ssr = SoundRecognitionNode()
    try:
       ssr.start(setup=(sys.argv[1] == "setup"))
    except rospy.exceptions.ROSInterruptException:
        pass