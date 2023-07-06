;; Auto-generated. Do not edit!


(when (boundp 'nao_nodes::WakeUp)
  (if (not (find-package "NAO_NODES"))
    (make-package "NAO_NODES"))
  (shadow 'WakeUp (find-package "NAO_NODES")))
(unless (find-package "NAO_NODES::WAKEUP")
  (make-package "NAO_NODES::WAKEUP"))
(unless (find-package "NAO_NODES::WAKEUPREQUEST")
  (make-package "NAO_NODES::WAKEUPREQUEST"))
(unless (find-package "NAO_NODES::WAKEUPRESPONSE")
  (make-package "NAO_NODES::WAKEUPRESPONSE"))

(in-package "ROS")





(defclass nao_nodes::WakeUpRequest
  :super ros::object
  :slots ())

(defmethod nao_nodes::WakeUpRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass nao_nodes::WakeUpResponse
  :super ros::object
  :slots (_ack ))

(defmethod nao_nodes::WakeUpResponse
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

(defclass nao_nodes::WakeUp
  :super ros::object
  :slots ())

(setf (get nao_nodes::WakeUp :md5sum-) "b6a73f722475d64a28238118997ef482")
(setf (get nao_nodes::WakeUp :datatype-) "nao_nodes/WakeUp")
(setf (get nao_nodes::WakeUp :request) nao_nodes::WakeUpRequest)
(setf (get nao_nodes::WakeUp :response) nao_nodes::WakeUpResponse)

(defmethod nao_nodes::WakeUpRequest
  (:response () (instance nao_nodes::WakeUpResponse :init)))

(setf (get nao_nodes::WakeUpRequest :md5sum-) "b6a73f722475d64a28238118997ef482")
(setf (get nao_nodes::WakeUpRequest :datatype-) "nao_nodes/WakeUpRequest")
(setf (get nao_nodes::WakeUpRequest :definition-)
      "---
string ack
")

(setf (get nao_nodes::WakeUpResponse :md5sum-) "b6a73f722475d64a28238118997ef482")
(setf (get nao_nodes::WakeUpResponse :datatype-) "nao_nodes/WakeUpResponse")
(setf (get nao_nodes::WakeUpResponse :definition-)
      "---
string ack
")



(provide :nao_nodes/WakeUp "b6a73f722475d64a28238118997ef482")


