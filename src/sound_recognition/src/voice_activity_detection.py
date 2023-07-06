#!/usr/bin/env python3
import rospy
from sound_recognition.msg import SpeechData
from std_msgs.msg import Int16MultiArray, String

from ros_vad import SpeechRecognitionVAD
from speech_recognition import AudioSource

import numpy as np
from time import sleep
import soundfile as sf
from queue import Queue

class ROSMicrophoneSource(AudioSource):

    def __init__(self, device_index=None, sample_rate=None, chunk_size=2720):
        self.device_index = device_index
        self.format = 8  # 16-bit int sampling
        self.SAMPLE_WIDTH = 2  # size in bytes of each sample (2 = 16 bit -> int16)
        self.SAMPLE_RATE = sample_rate  # sampling rate in Hertz
        self.CHUNK = chunk_size  # number of frames stored in each buffer

        self.audio = None
        self.stream = None


    def __enter__(self):
        self.stream = self.ROSAudioStream()

        return self

    def __exit__(self, exc_type, exc_value, traceback):
        pass

    class ROSAudioStream:
        def __init__(self):
            self.buffer = None
            rospy.Subscriber('nao_mic_data', Int16MultiArray, self.store)

        def store(self, audio):
            if self.buffer is not None:
                self.buffer.put(np.array(audio.data, dtype='int16').tobytes())


        def read(self, chunk):
            self.buffer = Queue() if self.buffer is None else self.buffer
            return self.buffer.get()


class SpeechDetectionNode:


    def start(self):
        # Node and publisher initialization
        pub = rospy.Publisher('speech_detection', SpeechData, queue_size=3)
        rospy.init_node('speech_detection_node')            

        # VAD initialization        
        self.speechRecognition = SpeechRecognitionVAD(
            device_index = None,
            sample_rate = 16000,
            chunk_size = 2720,
            timeout = 0,
            phrase_time_limit = 5,
            calibration_duration = 1,
            format = 'int16',
            source=ROSMicrophoneSource(
                None,
                16000,
                2720
            )
        )


        # Environment calibration
        self.speechRecognition.calibrate()
        self.speechRecognition.get_speech_frame(timeout = 1)

        # Loop
        while not rospy.is_shutdown():

            # Get speech data
            #rospy.loginfo("Calibrating...")
            self.speechRecognition.calibrate()
            #rospy.loginfo("Recording...")
            speech, timestamps = self.speechRecognition.get_speech_frame()
            
            if speech is None:
                continue
            
            # Message preparing
            msg = SpeechData()
            msg.data = speech
            msg.start_time = timestamps[0]
            msg.end_time = timestamps[1]

            # Message publishing
            pub.publish(msg)

            rospy.logdebug('Speech published with timestamps')

if __name__ == '__main__':
    speech_detection = SpeechDetectionNode()
    speech_detection.start()
    