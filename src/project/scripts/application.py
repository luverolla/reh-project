#!/usr/bin/env python

import time
from project.scripts.audioplayer_client import AudioPlayerClient
from project.scripts.sound_recognition_client import SoundRecognitionClient
from project.scripts.text2speech_client import Text2SpeechClient

def get_sound_file(name):
    return "/home/nao/sounds/%s/audio.wav" % name


if __name__ == "__main__":
    obj_names = []
    obj_lbls = []
    index = 0
    err_count = 0

    t2s = Text2SpeechClient()
    ap = AudioPlayerClient()
    sr = SoundRecognitionClient("sr_client")

    while index < len(obj_names):
        sounds = []
        print("Next object is %s. Hit Enter when you're ready" % obj_names[index])
        input()
        t2s.say(obj_names[index])
        ap.play(get_sound_file(obj_names[index]))
        print("Waiting for patient's response")
        start_time = time.time()
        while time.time() - start_time < 5:
            sounds.append(sr.get_sound())
        
        print("Timeout of %d seconds expired" % 5)
        print("Recorded: " + str(sounds))
        if obj_lbls[index] in sounds:
            index += 1
            continue
        else:
            err_count += 1

            if err_count > 2:
                t2s.say("End of exercise")
                break
            continue

        

