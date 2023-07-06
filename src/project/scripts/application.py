#!/usr/bin/env python

import time
from audioplayer_client import AudioPlayerClient
import rospy
from sound_recognition_client import SoundRecognitionClient
from text2speech_client import Text2SpeechClient

def get_sound_file(name):
    return "/home/nao/group1/sounds/%s/0001.wav" % name


if __name__ == "__main__":
    obj_names = ["Cow", "Sheep", "Car", "Train", "Dog"]
    obj_snds = ["muuuu", "beeeee", "brum brum", "ciuf ciuf", "bau bau"]
    obj_lbls = ["cow", "sheep", "car", "train", "dog"]
    index = 0
    err_count = 0

    t2s = Text2SpeechClient()
    sr = SoundRecognitionClient("sr_client")

    while index < len(obj_names):
        sr.start()
        sounds = []
        rospy.loginfo("Next object is %s. Hit Enter when you're ready" % obj_names[index])
        raw_input()
        t2s.say(obj_names[index])
        t2s.say(obj_snds[index])
        sr.recognize()
        rospy.loginfo("Waiting for patient's response")
        start_time = time.time()
        while time.time() - start_time < 5:
            pass
        
        sounds = sr.get_sounds()
        rospy.loginfo("Timeout of %d seconds expired" % 5)
        rospy.loginfo("Recorded: " + str([x for x in sounds if len(x) > 0]))
        if obj_lbls[index] in sounds:
            rospy.loginfo("Sound is right")
            index += 1
            continue
        else:
            err_count += 1
            rospy.loginfo("Sound is wrong, total errors: %d", err_count)

            if err_count > 2:
                rospy.loginfo("Maximum allowed errors reached, exercise failed")
                t2s.say("End of exercise")
                break
            continue

        

