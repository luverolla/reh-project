#!/usr/bin/env python3
import os
import rospy
from sensor_msgs.msg import Image
from vision_msgs.msg import Detection2D, Detection2DArray, ObjectHypothesisWithPose
import cv2
from threading import Lock
import numpy as np
from classmap import category_map as classmap # https://gist.github.com/xhlulu/f7735970704b97fd0b72203628c1cc77

rospy.init_node('visualization_node')
image_lock = Lock()
image = None

def rcv_detection(msg):
    global image
    rospy.loginfo('detection here')
    image_lock.acquire()
    if image is None: im = None
    else: im = image.copy()
    image_lock.release()
    if im is None: return
    h,w,_ = im.shape
    for d in msg.detections:
        c = d.results[0].id
        s = d.results[0].score
        b = [d.bbox.center.y,d.bbox.center.x,d.bbox.size_y, d.bbox.size_x]
        b[0]-=b[2]/2
        b[1]-=b[3]/2
        p1 = (int(b[1]*w+.5), int(b[0]*h+.5))
        p2 = (int((b[3]+b[1])*w+.5), int((b[2]+b[0])*h+.5))
        print(p1, p2, c, classmap[c], s)
        col = (255,0,0) 
        cv2.rectangle(im, p1, p2, col, 3 )
        p1 = (p1[0]-10, p1[1])
        cv2.putText(im, "%s %.2f" % (classmap[c],s), p1, cv2.FONT_HERSHEY_SIMPLEX, 0.8, col, 2)
    cv2.imshow('Image', im)
    cv2.waitKey(100)

def rcv_image(msg):
    global image
    rospy.loginfo('image here')
    image_lock.acquire()
    image = np.frombuffer(msg.data, dtype=np.uint8).reshape(msg.height, msg.width, -1)
    image_lock.release()


si = rospy.Subscriber("in_rgb", Image, rcv_image)
sd = rospy.Subscriber("detection", Detection2DArray, rcv_detection)


try:
    rospy.spin()

except KeyboardInterrupt:
    print("Shutting down")
    