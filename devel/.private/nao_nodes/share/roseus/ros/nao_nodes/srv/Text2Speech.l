;; Auto-generated. Do not edit!


(when (boundp 'nao_nodes::Text2Speech)
  (if (not (find-package "NAO_NODES"))
    (make-package "NAO_NODES"))
  (shadow 'Text2Speech (find-package "NAO_NODES")))
(unless (find-package "NAO_NODES::TEXT2SPEECH")
  (make-package "NAO_NODES::TEXT2SPEECH"))
(unless (find-package "NAO_NODES::TEXT2SPEECHREQUEST")
  (make-package "NAO_NODES::TEXT2SPEECHREQUEST"))
(unless (find-package "NAO_NODES::TEXT2SPEECHRESPONSE")
  (make-package "NAO_NODES::TEXT2SPEECHRESPONSE"))

(in-package "ROS")





(defclass nao_nodes::Text2SpeechRequest
  :super ros::object
  :slots (_speech ))

(defmethod nao_nodes::Text2SpeechRequest
  (:init
   (&key
    ((:speech __speech) "")
    )
   (send-super :init)
   (setq _speech (string __speech))
   self)
  (:speech
   (&optional __speech)
   (if __speech (setq _speech __speech)) _speech)
  (:serialization-length
   ()
   (+
    ;; string _speech
    4 (length _speech)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _speech
       (write-long (length _speech) s) (princ _speech s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _speech
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _speech (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass nao_nodes::Text2SpeechResponse
  :super ros::object
  :slots (_ack ))

(defmethod nao_nodes::Text2SpeechResponse
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

(defclass nao_nodes::Text2Speech
  :super ros::object
  :slots ())

(setf (get nao_nodes::Text2Speech :md5sum-) "8be93dfc13258654eb30fdcda5227e42")
(setf (get nao_nodes::Text2Speech :datatype-) "nao_nodes/Text2Speech")
(setf (get nao_nodes::Text2Speech :request) nao_nodes::Text2SpeechRequest)
(setf (get nao_nodes::Text2Speech :response) nao_nodes::Text2SpeechResponse)

(defmethod nao_nodes::Text2SpeechRequest
  (:response () (instance nao_nodes::Text2SpeechResponse :init)))

(setf (get nao_nodes::Text2SpeechRequest :md5sum-) "8be93dfc13258654eb30fdcda5227e42")
(setf (get nao_nodes::Text2SpeechRequest :datatype-) "nao_nodes/Text2SpeechRequest")
(setf (get nao_nodes::Text2SpeechRequest :definition-)
      "string speech
---
string ack
")

(setf (get nao_nodes::Text2SpeechResponse :md5sum-) "8be93dfc13258654eb30fdcda5227e42")
(setf (get nao_nodes::Text2SpeechResponse :datatype-) "nao_nodes/Text2SpeechResponse")
(setf (get nao_nodes::Text2SpeechResponse :definition-)
      "string speech
---
string ack
")



(provide :nao_nodes/Text2Speech "8be93dfc13258654eb30fdcda5227e42")


