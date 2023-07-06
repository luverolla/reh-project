#!/usr/bin/env python
import sys
import rospy
from project.srv import *

class Text2SpeechClient:

    def say(self, msg):
        rospy.wait_for_service("tts")
        try:
            tts = rospy.ServiceProxy('tts', Text2Speech)
            respl = tts(msg)
            return respl.ack
        except rospy.ServiceException as e:
            print("Text2Speech client exception %s" % e)

def usage():
    return "%s [message]" % sys.argv[0]

if __name__ == "__main__":
    if len(sys.argv) == 2:
        msg = sys.argv[1]
    else:
        print(usage())
        sys.exit(1)
    
    print("Requesting speech of %s" % msg)
    print("Received %s" % Text2SpeechClient().say(msg))