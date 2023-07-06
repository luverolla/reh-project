#!/usr/bin/env python3

import rospy
from sensor_msgs.msg import Image
import cv2
import os
import numpy as np

from mark_detector import MarkDetector
from pose_estimator import PoseEstimator


class Nodo(object):
    def __init__(self):

        # Introduce a pose estimator to solve pose.
        self.pose_estimator = PoseEstimator(img_size=(240, 320))

        #  Introduce a mark detector to detect landmarks.
        self.mark_detector = MarkDetector()

    def callback(self, msg):
        frame = np.frombuffer(msg.data, dtype=np.uint8).reshape(msg.height, msg.width, -1)

        # Step 1: Get a face from current frame.
        facebox = self.mark_detector.extract_cnn_facebox(frame)

        # Any face found?
        if facebox is not None:

            # Step 2: Detect landmarks. Crop and feed the face area into the
            # mark detector.
            x1, y1, x2, y2 = facebox
            face_img = frame[y1: y2, x1: x2]

            # Run the detection.
            marks = self.mark_detector.detect_marks(face_img)

            # Convert the locations from local face area to the global image.
            marks *= (x2 - x1)
            marks[:, 0] += x1
            marks[:, 1] += y1

            # Try pose estimation with 68 points.
            pose = self.pose_estimator.solve_pose_by_68_points(marks)

            # All done. The best way to show the result would be drawing the
            # pose on the frame in realtime.

            # Do you want to see the pose annotation?
            self.pose_estimator.draw_annotation_box(
                frame, pose[0], pose[1], color=(0, 255, 0))

            # Do you want to see the head axes?
            # pose_estimator.draw_axes(frame, pose[0], pose[1])

            # Do you want to see the marks?
            # mark_detector.draw_marks(frame, marks, color=(0, 255, 0))

            # Do you want to see the facebox?
            # mark_detector.draw_box(frame, [facebox])


        cv2.imshow("Nao Camera", frame)
        cv2.waitKey(50)

    def start(self):
        # Subscriber
        rospy.Subscriber("/in_rgb", Image, self.callback)
        
        rospy.spin()


if __name__ == '__main__':
    rospy.init_node("camera_show_node", anonymous=True)
    my_node = Nodo()
    my_node.start()
