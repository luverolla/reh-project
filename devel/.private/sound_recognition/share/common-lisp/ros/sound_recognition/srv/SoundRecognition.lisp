; Auto-generated. Do not edit!


(cl:in-package sound_recognition-srv)


;//! \htmlinclude SoundRecognition-request.msg.html

(cl:defclass <SoundRecognition-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SoundRecognition-request (<SoundRecognition-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SoundRecognition-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SoundRecognition-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sound_recognition-srv:<SoundRecognition-request> is deprecated: use sound_recognition-srv:SoundRecognition-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SoundRecognition-request>) ostream)
  "Serializes a message object of type '<SoundRecognition-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SoundRecognition-request>) istream)
  "Deserializes a message object of type '<SoundRecognition-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SoundRecognition-request>)))
  "Returns string type for a service object of type '<SoundRecognition-request>"
  "sound_recognition/SoundRecognitionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SoundRecognition-request)))
  "Returns string type for a service object of type 'SoundRecognition-request"
  "sound_recognition/SoundRecognitionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SoundRecognition-request>)))
  "Returns md5sum for a message object of type '<SoundRecognition-request>"
  "ea23f97416b04c6151d2b576c0665ac1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SoundRecognition-request)))
  "Returns md5sum for a message object of type 'SoundRecognition-request"
  "ea23f97416b04c6151d2b576c0665ac1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SoundRecognition-request>)))
  "Returns full string definition for message of type '<SoundRecognition-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SoundRecognition-request)))
  "Returns full string definition for message of type 'SoundRecognition-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SoundRecognition-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SoundRecognition-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SoundRecognition-request
))
;//! \htmlinclude SoundRecognition-response.msg.html

(cl:defclass <SoundRecognition-response> (roslisp-msg-protocol:ros-message)
  ((label
    :reader label
    :initarg :label
    :type cl:string
    :initform ""))
)

(cl:defclass SoundRecognition-response (<SoundRecognition-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SoundRecognition-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SoundRecognition-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sound_recognition-srv:<SoundRecognition-response> is deprecated: use sound_recognition-srv:SoundRecognition-response instead.")))

(cl:ensure-generic-function 'label-val :lambda-list '(m))
(cl:defmethod label-val ((m <SoundRecognition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sound_recognition-srv:label-val is deprecated.  Use sound_recognition-srv:label instead.")
  (label m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SoundRecognition-response>) ostream)
  "Serializes a message object of type '<SoundRecognition-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'label))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'label))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SoundRecognition-response>) istream)
  "Deserializes a message object of type '<SoundRecognition-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'label) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'label) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SoundRecognition-response>)))
  "Returns string type for a service object of type '<SoundRecognition-response>"
  "sound_recognition/SoundRecognitionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SoundRecognition-response)))
  "Returns string type for a service object of type 'SoundRecognition-response"
  "sound_recognition/SoundRecognitionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SoundRecognition-response>)))
  "Returns md5sum for a message object of type '<SoundRecognition-response>"
  "ea23f97416b04c6151d2b576c0665ac1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SoundRecognition-response)))
  "Returns md5sum for a message object of type 'SoundRecognition-response"
  "ea23f97416b04c6151d2b576c0665ac1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SoundRecognition-response>)))
  "Returns full string definition for message of type '<SoundRecognition-response>"
  (cl:format cl:nil "string label~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SoundRecognition-response)))
  "Returns full string definition for message of type 'SoundRecognition-response"
  (cl:format cl:nil "string label~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SoundRecognition-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'label))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SoundRecognition-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SoundRecognition-response
    (cl:cons ':label (label msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SoundRecognition)))
  'SoundRecognition-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SoundRecognition)))
  'SoundRecognition-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SoundRecognition)))
  "Returns string type for a service object of type '<SoundRecognition>"
  "sound_recognition/SoundRecognition")