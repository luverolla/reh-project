;; Auto-generated. Do not edit!


(when (boundp 'nao_nodes::Rest)
  (if (not (find-package "NAO_NODES"))
    (make-package "NAO_NODES"))
  (shadow 'Rest (find-package "NAO_NODES")))
(unless (find-package "NAO_NODES::REST")
  (make-package "NAO_NODES::REST"))
(unless (find-package "NAO_NODES::RESTREQUEST")
  (make-package "NAO_NODES::RESTREQUEST"))
(unless (find-package "NAO_NODES::RESTRESPONSE")
  (make-package "NAO_NODES::RESTRESPONSE"))

(in-package "ROS")





(defclass nao_nodes::RestRequest
  :super ros::object
  :slots ())

(defmethod nao_nodes::RestRequest
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

(defclass nao_nodes::RestResponse
  :super ros::object
  :slots (_ack ))

(defmethod nao_nodes::RestResponse
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

(defclass nao_nodes::Rest
  :super ros::object
  :slots ())

(setf (get nao_nodes::Rest :md5sum-) "b6a73f722475d64a28238118997ef482")
(setf (get nao_nodes::Rest :datatype-) "nao_nodes/Rest")
(setf (get nao_nodes::Rest :request) nao_nodes::RestRequest)
(setf (get nao_nodes::Rest :response) nao_nodes::RestResponse)

(defmethod nao_nodes::RestRequest
  (:response () (instance nao_nodes::RestResponse :init)))

(setf (get nao_nodes::RestRequest :md5sum-) "b6a73f722475d64a28238118997ef482")
(setf (get nao_nodes::RestRequest :datatype-) "nao_nodes/RestRequest")
(setf (get nao_nodes::RestRequest :definition-)
      "---
string ack
")

(setf (get nao_nodes::RestResponse :md5sum-) "b6a73f722475d64a28238118997ef482")
(setf (get nao_nodes::RestResponse :datatype-) "nao_nodes/RestResponse")
(setf (get nao_nodes::RestResponse :definition-)
      "---
string ack
")



(provide :nao_nodes/Rest "b6a73f722475d64a28238118997ef482")


