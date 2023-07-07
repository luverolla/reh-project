#!/usr/bin/env python
import sys
import rospy
from project.srv import *

class Text2SpeechClient:

    def say(self, speech, speed):
        rospy.wait_for_service("tts")
        try:
            tts = rospy.ServiceProxy('tts', Text2Speech)
            respl = tts(speech, speed)
            return respl.ack
        except rospy.ServiceException as e:
            print("Text2Speech client exception %s" % e)

def usage():
    return "%s [speed] [message]" % sys.argv[0]

if __name__ == "__main__":
    if len(sys.argv) == 3:
        msg = sys.argv[2]
        speed = int(sys.argv[1])
    else:
        print(usage())
        sys.exit(1)
    
    print("Requesting speech of %s at speed %d" % (msg, speed))
    print("Received %s" % Text2SpeechClient().say(msg, speed))