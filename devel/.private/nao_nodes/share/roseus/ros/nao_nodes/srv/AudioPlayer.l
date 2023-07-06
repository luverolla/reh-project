;; Auto-generated. Do not edit!


(when (boundp 'nao_nodes::AudioPlayer)
  (if (not (find-package "NAO_NODES"))
    (make-package "NAO_NODES"))
  (shadow 'AudioPlayer (find-package "NAO_NODES")))
(unless (find-package "NAO_NODES::AUDIOPLAYER")
  (make-package "NAO_NODES::AUDIOPLAYER"))
(unless (find-package "NAO_NODES::AUDIOPLAYERREQUEST")
  (make-package "NAO_NODES::AUDIOPLAYERREQUEST"))
(unless (find-package "NAO_NODES::AUDIOPLAYERRESPONSE")
  (make-package "NAO_NODES::AUDIOPLAYERRESPONSE"))

(in-package "ROS")





(defclass nao_nodes::AudioPlayerRequest
  :super ros::object
  :slots (_path ))

(defmethod nao_nodes::AudioPlayerRequest
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

(defclass nao_nodes::AudioPlayerResponse
  :super ros::object
  :slots (_ack ))

(defmethod nao_nodes::AudioPlayerResponse
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

(defclass nao_nodes::AudioPlayer
  :super ros::object
  :slots ())

(setf (get nao_nodes::AudioPlayer :md5sum-) "773c9cd39742097a22777897dedef274")
(setf (get nao_nodes::AudioPlayer :datatype-) "nao_nodes/AudioPlayer")
(setf (get nao_nodes::AudioPlayer :request) nao_nodes::AudioPlayerRequest)
(setf (get nao_nodes::AudioPlayer :response) nao_nodes::AudioPlayerResponse)

(defmethod nao_nodes::AudioPlayerRequest
  (:response () (instance nao_nodes::AudioPlayerResponse :init)))

(setf (get nao_nodes::AudioPlayerRequest :md5sum-) "773c9cd39742097a22777897dedef274")
(setf (get nao_nodes::AudioPlayerRequest :datatype-) "nao_nodes/AudioPlayerRequest")
(setf (get nao_nodes::AudioPlayerRequest :definition-)
      "string path
---
string ack
")

(setf (get nao_nodes::AudioPlayerResponse :md5sum-) "773c9cd39742097a22777897dedef274")
(setf (get nao_nodes::AudioPlayerResponse :datatype-) "nao_nodes/AudioPlayerResponse")
(setf (get nao_nodes::AudioPlayerResponse :definition-)
      "string path
---
string ack
")



(provide :nao_nodes/AudioPlayer "773c9cd39742097a22777897dedef274")


