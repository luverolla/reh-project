;; Auto-generated. Do not edit!


(when (boundp 'project::Text2Speech)
  (if (not (find-package "PROJECT"))
    (make-package "PROJECT"))
  (shadow 'Text2Speech (find-package "PROJECT")))
(unless (find-package "PROJECT::TEXT2SPEECH")
  (make-package "PROJECT::TEXT2SPEECH"))
(unless (find-package "PROJECT::TEXT2SPEECHREQUEST")
  (make-package "PROJECT::TEXT2SPEECHREQUEST"))
(unless (find-package "PROJECT::TEXT2SPEECHRESPONSE")
  (make-package "PROJECT::TEXT2SPEECHRESPONSE"))

(in-package "ROS")





(defclass project::Text2SpeechRequest
  :super ros::object
  :slots (_speech _speed ))

(defmethod project::Text2SpeechRequest
  (:init
   (&key
    ((:speech __speech) "")
    ((:speed __speed) 0)
    )
   (send-super :init)
   (setq _speech (string __speech))
   (setq _speed (round __speed))
   self)
  (:speech
   (&optional __speech)
   (if __speech (setq _speech __speech)) _speech)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; string _speech
    4 (length _speech)
    ;; int32 _speed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _speech
       (write-long (length _speech) s) (princ _speech s)
     ;; int32 _speed
       (write-long _speed s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _speech
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _speech (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _speed
     (setq _speed (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass project::Text2SpeechResponse
  :super ros::object
  :slots (_ack ))

(defmethod project::Text2SpeechResponse
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

(defclass project::Text2Speech
  :super ros::object
  :slots ())

(setf (get project::Text2Speech :md5sum-) "7459ac5d796c08af89c1f1205a77bfa7")
(setf (get project::Text2Speech :datatype-) "project/Text2Speech")
(setf (get project::Text2Speech :request) project::Text2SpeechRequest)
(setf (get project::Text2Speech :response) project::Text2SpeechResponse)

(defmethod project::Text2SpeechRequest
  (:response () (instance project::Text2SpeechResponse :init)))

(setf (get project::Text2SpeechRequest :md5sum-) "7459ac5d796c08af89c1f1205a77bfa7")
(setf (get project::Text2SpeechRequest :datatype-) "project/Text2SpeechRequest")
(setf (get project::Text2SpeechRequest :definition-)
      "string speech
int32 speed
---
string ack
")

(setf (get project::Text2SpeechResponse :md5sum-) "7459ac5d796c08af89c1f1205a77bfa7")
(setf (get project::Text2SpeechResponse :datatype-) "project/Text2SpeechResponse")
(setf (get project::Text2SpeechResponse :definition-)
      "string speech
int32 speed
---
string ack
")



(provide :project/Text2Speech "7459ac5d796c08af89c1f1205a77bfa7")


