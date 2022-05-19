; Auto-generated. Do not edit!


(cl:in-package metrics_refbox_msgs-msg)


;//! \htmlinclude ClutteredPickResult.msg.html

(cl:defclass <ClutteredPickResult> (roslisp-msg-protocol:ros-message)
  ((message_type
    :reader message_type
    :initarg :message_type
    :type cl:fixnum
    :initform 0)
   (object_name
    :reader object_name
    :initarg :object_name
    :type cl:string
    :initform "")
   (action_completed
    :reader action_completed
    :initarg :action_completed
    :type cl:fixnum
    :initform 0)
   (num_objects_picked
    :reader num_objects_picked
    :initarg :num_objects_picked
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ClutteredPickResult (<ClutteredPickResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClutteredPickResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClutteredPickResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name metrics_refbox_msgs-msg:<ClutteredPickResult> is deprecated: use metrics_refbox_msgs-msg:ClutteredPickResult instead.")))

(cl:ensure-generic-function 'message_type-val :lambda-list '(m))
(cl:defmethod message_type-val ((m <ClutteredPickResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:message_type-val is deprecated.  Use metrics_refbox_msgs-msg:message_type instead.")
  (message_type m))

(cl:ensure-generic-function 'object_name-val :lambda-list '(m))
(cl:defmethod object_name-val ((m <ClutteredPickResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:object_name-val is deprecated.  Use metrics_refbox_msgs-msg:object_name instead.")
  (object_name m))

(cl:ensure-generic-function 'action_completed-val :lambda-list '(m))
(cl:defmethod action_completed-val ((m <ClutteredPickResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:action_completed-val is deprecated.  Use metrics_refbox_msgs-msg:action_completed instead.")
  (action_completed m))

(cl:ensure-generic-function 'num_objects_picked-val :lambda-list '(m))
(cl:defmethod num_objects_picked-val ((m <ClutteredPickResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:num_objects_picked-val is deprecated.  Use metrics_refbox_msgs-msg:num_objects_picked instead.")
  (num_objects_picked m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ClutteredPickResult>)))
    "Constants for message type '<ClutteredPickResult>"
  '((:FEEDBACK . 1)
    (:RESULT . 2)
    (:PICKED . 1)
    (:PLACED . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ClutteredPickResult)))
    "Constants for message type 'ClutteredPickResult"
  '((:FEEDBACK . 1)
    (:RESULT . 2)
    (:PICKED . 1)
    (:PLACED . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClutteredPickResult>) ostream)
  "Serializes a message object of type '<ClutteredPickResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'message_type)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action_completed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_objects_picked)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClutteredPickResult>) istream)
  "Deserializes a message object of type '<ClutteredPickResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'message_type)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'object_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action_completed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_objects_picked)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClutteredPickResult>)))
  "Returns string type for a message object of type '<ClutteredPickResult>"
  "metrics_refbox_msgs/ClutteredPickResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClutteredPickResult)))
  "Returns string type for a message object of type 'ClutteredPickResult"
  "metrics_refbox_msgs/ClutteredPickResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClutteredPickResult>)))
  "Returns md5sum for a message object of type '<ClutteredPickResult>"
  "87f9e733679ff877ef0bd36192d0de48")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClutteredPickResult)))
  "Returns md5sum for a message object of type 'ClutteredPickResult"
  "87f9e733679ff877ef0bd36192d0de48")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClutteredPickResult>)))
  "Returns full string definition for message of type '<ClutteredPickResult>"
  (cl:format cl:nil "uint8 FEEDBACK=1~%uint8 RESULT=2~%uint8 message_type~%~%# feedback~%uint8 PICKED=1~%uint8 PLACED=2~%~%string object_name~%uint8 action_completed~%~%~%# result~%uint8 num_objects_picked~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClutteredPickResult)))
  "Returns full string definition for message of type 'ClutteredPickResult"
  (cl:format cl:nil "uint8 FEEDBACK=1~%uint8 RESULT=2~%uint8 message_type~%~%# feedback~%uint8 PICKED=1~%uint8 PLACED=2~%~%string object_name~%uint8 action_completed~%~%~%# result~%uint8 num_objects_picked~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClutteredPickResult>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'object_name))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClutteredPickResult>))
  "Converts a ROS message object to a list"
  (cl:list 'ClutteredPickResult
    (cl:cons ':message_type (message_type msg))
    (cl:cons ':object_name (object_name msg))
    (cl:cons ':action_completed (action_completed msg))
    (cl:cons ':num_objects_picked (num_objects_picked msg))
))
