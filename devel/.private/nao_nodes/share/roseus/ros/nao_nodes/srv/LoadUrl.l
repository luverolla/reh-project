;; Auto-generated. Do not edit!


(when (boundp 'nao_nodes::LoadUrl)
  (if (not (find-package "NAO_NODES"))
    (make-package "NAO_NODES"))
  (shadow 'LoadUrl (find-package "NAO_NODES")))
(unless (find-package "NAO_NODES::LOADURL")
  (make-package "NAO_NODES::LOADURL"))
(unless (find-package "NAO_NODES::LOADURLREQUEST")
  (make-package "NAO_NODES::LOADURLREQUEST"))
(unless (find-package "NAO_NODES::LOADURLRESPONSE")
  (make-package "NAO_NODES::LOADURLRESPONSE"))

(in-package "ROS")





(defclass nao_nodes::LoadUrlRequest
  :super ros::object
  :slots (_url ))

(defmethod nao_nodes::LoadUrlRequest
  (:init
   (&key
    ((:url __url) "")
    )
   (send-super :init)
   (setq _url (string __url))
   self)
  (:url
   (&optional __url)
   (if __url (setq _url __url)) _url)
  (:serialization-length
   ()
   (+
    ;; string _url
    4 (length _url)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _url
       (write-long (length _url) s) (princ _url s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _url
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _url (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass nao_nodes::LoadUrlResponse
  :super ros::object
  :slots (_ack ))

(defmethod nao_nodes::LoadUrlResponse
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

(defclass nao_nodes::LoadUrl
  :super ros::object
  :slots ())

(setf (get nao_nodes::LoadUrl :md5sum-) "5562f0f326dc984bc777bae8e1589603")
(setf (get nao_nodes::LoadUrl :datatype-) "nao_nodes/LoadUrl")
(setf (get nao_nodes::LoadUrl :request) nao_nodes::LoadUrlRequest)
(setf (get nao_nodes::LoadUrl :response) nao_nodes::LoadUrlResponse)

(defmethod nao_nodes::LoadUrlRequest
  (:response () (instance nao_nodes::LoadUrlResponse :init)))

(setf (get nao_nodes::LoadUrlRequest :md5sum-) "5562f0f326dc984bc777bae8e1589603")
(setf (get nao_nodes::LoadUrlRequest :datatype-) "nao_nodes/LoadUrlRequest")
(setf (get nao_nodes::LoadUrlRequest :definition-)
      "string url
---
string ack
")

(setf (get nao_nodes::LoadUrlResponse :md5sum-) "5562f0f326dc984bc777bae8e1589603")
(setf (get nao_nodes::LoadUrlResponse :datatype-) "nao_nodes/LoadUrlResponse")
(setf (get nao_nodes::LoadUrlResponse :definition-)
      "string url
---
string ack
")



(provide :nao_nodes/LoadUrl "5562f0f326dc984bc777bae8e1589603")


