; Auto-generated. Do not edit!


(cl:in-package nao_nodes-srv)


;//! \htmlinclude Locomotion-request.msg.html

(cl:defclass <Locomotion-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (theta
    :reader theta
    :initarg :theta
    :type cl:float
    :initform 0.0))
)

(cl:defclass Locomotion-request (<Locomotion-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Locomotion-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Locomotion-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nao_nodes-srv:<Locomotion-request> is deprecated: use nao_nodes-srv:Locomotion-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Locomotion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_nodes-srv:x-val is deprecated.  Use nao_nodes-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Locomotion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_nodes-srv:y-val is deprecated.  Use nao_nodes-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <Locomotion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_nodes-srv:theta-val is deprecated.  Use nao_nodes-srv:theta instead.")
  (theta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Locomotion-request>) ostream)
  "Serializes a message object of type '<Locomotion-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Locomotion-request>) istream)
  "Deserializes a message object of type '<Locomotion-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Locomotion-request>)))
  "Returns string type for a service object of type '<Locomotion-request>"
  "nao_nodes/LocomotionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Locomotion-request)))
  "Returns string type for a service object of type 'Locomotion-request"
  "nao_nodes/LocomotionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Locomotion-request>)))
  "Returns md5sum for a message object of type '<Locomotion-request>"
  "f9865562294d6b227aec4d4d15fd8ad1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Locomotion-request)))
  "Returns md5sum for a message object of type 'Locomotion-request"
  "f9865562294d6b227aec4d4d15fd8ad1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Locomotion-request>)))
  "Returns full string definition for message of type '<Locomotion-request>"
  (cl:format cl:nil "float32 x~%float32 y~%float32 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Locomotion-request)))
  "Returns full string definition for message of type 'Locomotion-request"
  (cl:format cl:nil "float32 x~%float32 y~%float32 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Locomotion-request>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Locomotion-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Locomotion-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':theta (theta msg))
))
;//! \htmlinclude Locomotion-response.msg.html

(cl:defclass <Locomotion-response> (roslisp-msg-protocol:ros-message)
  ((ack
    :reader ack
    :initarg :ack
    :type cl:string
    :initform ""))
)

(cl:defclass Locomotion-response (<Locomotion-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Locomotion-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Locomotion-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nao_nodes-srv:<Locomotion-response> is deprecated: use nao_nodes-srv:Locomotion-response instead.")))

(cl:ensure-generic-function 'ack-val :lambda-list '(m))
(cl:defmethod ack-val ((m <Locomotion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nao_nodes-srv:ack-val is deprecated.  Use nao_nodes-srv:ack instead.")
  (ack m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Locomotion-response>) ostream)
  "Serializes a message object of type '<Locomotion-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ack))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ack))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Locomotion-response>) istream)
  "Deserializes a message object of type '<Locomotion-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Locomotion-response>)))
  "Returns string type for a service object of type '<Locomotion-response>"
  "nao_nodes/LocomotionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Locomotion-response)))
  "Returns string type for a service object of type 'Locomotion-response"
  "nao_nodes/LocomotionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Locomotion-response>)))
  "Returns md5sum for a message object of type '<Locomotion-response>"
  "f9865562294d6b227aec4d4d15fd8ad1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Locomotion-response)))
  "Returns md5sum for a message object of type 'Locomotion-response"
  "f9865562294d6b227aec4d4d15fd8ad1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Locomotion-response>)))
  "Returns full string definition for message of type '<Locomotion-response>"
  (cl:format cl:nil "string ack~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Locomotion-response)))
  "Returns full string definition for message of type 'Locomotion-response"
  (cl:format cl:nil "string ack~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Locomotion-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'ack))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Locomotion-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Locomotion-response
    (cl:cons ':ack (ack msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Locomotion)))
  'Locomotion-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Locomotion)))
  'Locomotion-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Locomotion)))
  "Returns string type for a service object of type '<Locomotion>"
  "nao_nodes/Locomotion")