;; Auto-generated. Do not edit!


(when (boundp 'project::AudioPlayer)
  (if (not (find-package "PROJECT"))
    (make-package "PROJECT"))
  (shadow 'AudioPlayer (find-package "PROJECT")))
(unless (find-package "PROJECT::AUDIOPLAYER")
  (make-package "PROJECT::AUDIOPLAYER"))
(unless (find-package "PROJECT::AUDIOPLAYERREQUEST")
  (make-package "PROJECT::AUDIOPLAYERREQUEST"))
(unless (find-package "PROJECT::AUDIOPLAYERRESPONSE")
  (make-package "PROJECT::AUDIOPLAYERRESPONSE"))

(in-package "ROS")





(defclass project::AudioPlayerRequest
  :super ros::object
  :slots (_path ))

(defmethod project::AudioPlayerRequest
  (:init
   (&key
    ((:path __path) "")
    )
   (send-super :init)
   (setq _path (string __path))
   self)
  (:path
   (&optional __path)
   (if __path (setq _path __path)) _path)
  (:serialization-length
   ()
   (+
    ;; string _path
    4 (length _path)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _path
       (write-long (length _path) s) (princ _path s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass project::AudioPlayerResponse
  :super ros::object
  :slots (_ack ))

(defmethod project::AudioPlayerResponse
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

(defclass project::AudioPlayer
  :super ros::object
  :slots ())

(setf (get project::AudioPlayer :md5sum-) "773c9cd39742097a22777897dedef274")
(setf (get project::AudioPlayer :datatype-) "project/AudioPlayer")
(setf (get project::AudioPlayer :request) project::AudioPlayerRequest)
(setf (get project::AudioPlayer :response) project::AudioPlayerResponse)

(defmethod project::AudioPlayerRequest
  (:response () (instance project::AudioPlayerResponse :init)))

(setf (get project::AudioPlayerRequest :md5sum-) "773c9cd39742097a22777897dedef274")
(setf (get project::AudioPlayerRequest :datatype-) "project/AudioPlayerRequest")
(setf (get project::AudioPlayerRequest :definition-)
      "string path
---
string ack
")

(setf (get project::AudioPlayerResponse :md5sum-) "773c9cd39742097a22777897dedef274")
(setf (get project::AudioPlayerResponse :datatype-) "project/AudioPlayerResponse")
(setf (get project::AudioPlayerResponse :definition-)
      "string path
---
string ack
")



(provide :project/AudioPlayer "773c9cd39742097a22777897dedef274")


