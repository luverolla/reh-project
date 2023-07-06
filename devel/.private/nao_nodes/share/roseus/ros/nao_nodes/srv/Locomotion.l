;; Auto-generated. Do not edit!


(when (boundp 'nao_nodes::Locomotion)
  (if (not (find-package "NAO_NODES"))
    (make-package "NAO_NODES"))
  (shadow 'Locomotion (find-package "NAO_NODES")))
(unless (find-package "NAO_NODES::LOCOMOTION")
  (make-package "NAO_NODES::LOCOMOTION"))
(unless (find-package "NAO_NODES::LOCOMOTIONREQUEST")
  (make-package "NAO_NODES::LOCOMOTIONREQUEST"))
(unless (find-package "NAO_NODES::LOCOMOTIONRESPONSE")
  (make-package "NAO_NODES::LOCOMOTIONRESPONSE"))

(in-package "ROS")





(defclass nao_nodes::LocomotionRequest
  :super ros::object
  :slots (_x _y _theta ))

(defmethod nao_nodes::LocomotionRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:theta __theta) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _theta (float __theta))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _theta
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _theta
     (setq _theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass nao_nodes::LocomotionResponse
  :super ros::object
  :slots (_ack ))

(defmethod nao_nodes::LocomotionResponse
  (:init
   (&key
    ((:ack __ack) "")
    )
   (send-super :init)
   (setq _ack (string __ack))
   self)
  (:ack
   (&optional __ack)
   (if __ack (setq _ack __ack)) _ack)
  (:serialization-length
   ()
   (+
    ;; string _ack
    4 (length _ack)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _ack
       (write-long (length _ack) s) (princ _ack s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _ack
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ack (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass nao_nodes::Locomotion
  :super ros::object
  :slots ())

(setf (get nao_nodes::Locomotion :md5sum-) "f9865562294d6b227aec4d4d15fd8ad1")
(setf (get nao_nodes::Locomotion :datatype-) "nao_nodes/Locomotion")
(setf (get nao_nodes::Locomotion :request) nao_nodes::LocomotionRequest)
(setf (get nao_nodes::Locomotion :response) nao_nodes::LocomotionResponse)

(defmethod nao_nodes::LocomotionRequest
  (:response () (instance nao_nodes::LocomotionResponse :init)))

(setf (get nao_nodes::LocomotionRequest :md5sum-) "f9865562294d6b227aec4d4d15fd8ad1")
(setf (get nao_nodes::LocomotionRequest :datatype-) "nao_nodes/LocomotionRequest")
(setf (get nao_nodes::LocomotionRequest :definition-)
      "float32 x
float32 y
float32 theta
---
string ack
")

(setf (get nao_nodes::LocomotionResponse :md5sum-) "f9865562294d6b227aec4d4d15fd8ad1")
(setf (get nao_nodes::LocomotionResponse :datatype-) "nao_nodes/LocomotionResponse")
(setf (get nao_nodes::LocomotionResponse :definition-)
      "float32 x
float32 y
float32 theta
---
string ack
")



(provide :nao_nodes/Locomotion "f9865562294d6b227aec4d4d15fd8ad1")


