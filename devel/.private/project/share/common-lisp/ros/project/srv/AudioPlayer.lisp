; Auto-generated. Do not edit!


(cl:in-package project-srv)


;//! \htmlinclude AudioPlayer-request.msg.html

(cl:defclass <AudioPlayer-request> (roslisp-msg-protocol:ros-message)
  ((path
    :reader path
    :initarg :path
    :type cl:string
    :initform ""))
)

(cl:defclass AudioPlayer-request (<AudioPlayer-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AudioPlayer-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AudioPlayer-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name project-srv:<AudioPlayer-request> is deprecated: use project-srv:AudioPlayer-request instead.")))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <AudioPlayer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader project-srv:path-val is deprecated.  Use project-srv:path instead.")
  (path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AudioPlayer-request>) ostream)
  "Serializes a message object of type '<AudioPlayer-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AudioPlayer-request>) istream)
  "Deserializes a message object of type '<AudioPlayer-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AudioPlayer-request>)))
  "Returns string type for a service object of type '<AudioPlayer-request>"
  "project/AudioPlayerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AudioPlayer-request)))
  "Returns string type for a service object of type 'AudioPlayer-request"
  "project/AudioPlayerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AudioPlayer-request>)))
  "Returns md5sum for a message object of type '<AudioPlayer-request>"
  "773c9cd39742097a22777897dedef274")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AudioPlayer-request)))
  "Returns md5sum for a message object of type 'AudioPlayer-request"
  "773c9cd39742097a22777897dedef274")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AudioPlayer-request>)))
  "Returns full string definition for message of type '<AudioPlayer-request>"
  (cl:format cl:nil "string path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AudioPlayer-request)))
  "Returns full string definition for message of type 'AudioPlayer-request"
  (cl:format cl:nil "string path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AudioPlayer-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AudioPlayer-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AudioPlayer-request
    (cl:cons ':path (path msg))
))
;//! \htmlinclude AudioPlayer-response.msg.html

(cl:defclass <AudioPlayer-response> (roslisp-msg-protocol:ros-message)
  ((ack
    :reader ack
    :initarg :ack
    :type cl:string
    :initform ""))
)

(cl:defclass AudioPlayer-response (<AudioPlayer-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AudioPlayer-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AudioPlayer-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name project-srv:<AudioPlayer-response> is deprecated: use project-srv:AudioPlayer-response instead.")))

(cl:ensure-generic-function 'ack-val :lambda-list '(m))
(cl:defmethod ack-val ((m <AudioPlayer-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader project-srv:ack-val is deprecated.  Use project-srv:ack instead.")
  (ack m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AudioPlayer-response>) ostream)
  "Serializes a message object of type '<AudioPlayer-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ack))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ack))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AudioPlayer-response>) istream)
  "Deserializes a message object of type '<AudioPlayer-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ack) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ack) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AudioPlayer-response>)))
  "Returns string type for a service object of type '<AudioPlayer-response>"
  "project/AudioPlayerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AudioPlayer-response)))
  "Returns string type for a service object of type 'AudioPlayer-response"
  "project/AudioPlayerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AudioPlayer-response>)))
  "Returns md5sum for a message object of type '<AudioPlayer-response>"
  "773c9cd39742097a22777897dedef274")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AudioPlayer-response)))
  "Returns md5sum for a message object of type 'AudioPlayer-response"
  "773c9cd39742097a22777897dedef274")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AudioPlayer-response>)))
  "Returns full string definition for message of type '<AudioPlayer-response>"
  (cl:format cl:nil "string ack~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AudioPlayer-response)))
  "Returns full string definition for message of type 'AudioPlayer-response"
  (cl:format cl:nil "string ack~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AudioPlayer-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'ack))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AudioPlayer-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AudioPlayer-response
    (cl:cons ':ack (ack msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AudioPlayer)))
  'AudioPlayer-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AudioPlayer)))
  'AudioPlayer-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AudioPlayer)))
  "Returns string type for a service object of type '<AudioPlayer>"
  "project/AudioPlayer")