#!/usr/bin/env python
import rospy

from std_msgs.msg import String

class SoundRecognitionClient:
    
    def __init__(self):
        self.curr_sound = []

    def start(self, node_name):
        rospy.init_node(node_name, anonymous=True)
        rospy.Subscriber("soundrec", String, self.sub_clbk)

    def sub_clbk(self, data):
        self.curr_sound.append(data.data)
        rospy.loginfo(rospy.get_caller_id() + " heard %s" % data.data)

    def get_sound(self):
        return self.curr_sound

if __name__ == "__main__": 
    src = SoundRecognitionClient()
    src.start("src_client")
    rospy.spin()