; Auto-generated. Do not edit!


(cl:in-package metrics_refbox_msgs-msg)


;//! \htmlinclude GestureRecognitionResult.msg.html

(cl:defclass <GestureRecognitionResult> (roslisp-msg-protocol:ros-message)
  ((message_type
    :reader message_type
    :initarg :message_type
    :type cl:fixnum
    :initform 0)
   (gestures
    :reader gestures
    :initarg :gestures
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass GestureRecognitionResult (<GestureRecognitionResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GestureRecognitionResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GestureRecognitionResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name metrics_refbox_msgs-msg:<GestureRecognitionResult> is deprecated: use metrics_refbox_msgs-msg:GestureRecognitionResult instead.")))

(cl:ensure-generic-function 'message_type-val :lambda-list '(m))
(cl:defmethod message_type-val ((m <GestureRecognitionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:message_type-val is deprecated.  Use metrics_refbox_msgs-msg:message_type instead.")
  (message_type m))

(cl:ensure-generic-function 'gestures-val :lambda-list '(m))
(cl:defmethod gestures-val ((m <GestureRecognitionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:gestures-val is deprecated.  Use metrics_refbox_msgs-msg:gestures instead.")
  (gestures m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GestureRecognitionResult>)))
    "Constants for message type '<GestureRecognitionResult>"
  '((:FEEDBACK . 1)
    (:RESULT . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GestureRecognitionResult)))
    "Constants for message type 'GestureRecognitionResult"
  '((:FEEDBACK . 1)
    (:RESULT . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GestureRecognitionResult>) ostream)
  "Serializes a message object of type '<GestureRecognitionResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'message_type)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'gestures))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'gestures))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GestureRecognitionResult>) istream)
  "Deserializes a message object of type '<GestureRecognitionResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'message_type)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'gestures) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'gestures)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GestureRecognitionResult>)))
  "Returns string type for a message object of type '<GestureRecognitionResult>"
  "metrics_refbox_msgs/GestureRecognitionResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GestureRecognitionResult)))
  "Returns string type for a message object of type 'GestureRecognitionResult"
  "metrics_refbox_msgs/GestureRecognitionResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GestureRecognitionResult>)))
  "Returns md5sum for a message object of type '<GestureRecognitionResult>"
  "0534e12d393a2b3abfb6b552d909c2e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GestureRecognitionResult)))
  "Returns md5sum for a message object of type 'GestureRecognitionResult"
  "0534e12d393a2b3abfb6b552d909c2e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GestureRecognitionResult>)))
  "Returns full string definition for message of type '<GestureRecognitionResult>"
  (cl:format cl:nil "uint8 FEEDBACK=1~%uint8 RESULT=2~%uint8 message_type~%# list of gestures ordered from most probable to least probable.~%# Up to a maximum of 2 gestures will be considered for evaluation~%string[] gestures~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GestureRecognitionResult)))
  "Returns full string definition for message of type 'GestureRecognitionResult"
  (cl:format cl:nil "uint8 FEEDBACK=1~%uint8 RESULT=2~%uint8 message_type~%# list of gestures ordered from most probable to least probable.~%# Up to a maximum of 2 gestures will be considered for evaluation~%string[] gestures~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GestureRecognitionResult>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'gestures) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GestureRecognitionResult>))
  "Converts a ROS message object to a list"
  (cl:list 'GestureRecognitionResult
    (cl:cons ':message_type (message_type msg))
    (cl:cons ':gestures (gestures msg))
))
