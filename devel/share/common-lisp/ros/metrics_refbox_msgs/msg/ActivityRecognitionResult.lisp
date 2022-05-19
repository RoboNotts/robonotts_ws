; Auto-generated. Do not edit!


(cl:in-package metrics_refbox_msgs-msg)


;//! \htmlinclude ActivityRecognitionResult.msg.html

(cl:defclass <ActivityRecognitionResult> (roslisp-msg-protocol:ros-message)
  ((message_type
    :reader message_type
    :initarg :message_type
    :type cl:fixnum
    :initform 0)
   (activities
    :reader activities
    :initarg :activities
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass ActivityRecognitionResult (<ActivityRecognitionResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ActivityRecognitionResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ActivityRecognitionResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name metrics_refbox_msgs-msg:<ActivityRecognitionResult> is deprecated: use metrics_refbox_msgs-msg:ActivityRecognitionResult instead.")))

(cl:ensure-generic-function 'message_type-val :lambda-list '(m))
(cl:defmethod message_type-val ((m <ActivityRecognitionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:message_type-val is deprecated.  Use metrics_refbox_msgs-msg:message_type instead.")
  (message_type m))

(cl:ensure-generic-function 'activities-val :lambda-list '(m))
(cl:defmethod activities-val ((m <ActivityRecognitionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:activities-val is deprecated.  Use metrics_refbox_msgs-msg:activities instead.")
  (activities m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ActivityRecognitionResult>)))
    "Constants for message type '<ActivityRecognitionResult>"
  '((:FEEDBACK . 1)
    (:RESULT . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ActivityRecognitionResult)))
    "Constants for message type 'ActivityRecognitionResult"
  '((:FEEDBACK . 1)
    (:RESULT . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ActivityRecognitionResult>) ostream)
  "Serializes a message object of type '<ActivityRecognitionResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'message_type)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'activities))))
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
   (cl:slot-value msg 'activities))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ActivityRecognitionResult>) istream)
  "Deserializes a message object of type '<ActivityRecognitionResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'message_type)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'activities) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'activities)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ActivityRecognitionResult>)))
  "Returns string type for a message object of type '<ActivityRecognitionResult>"
  "metrics_refbox_msgs/ActivityRecognitionResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActivityRecognitionResult)))
  "Returns string type for a message object of type 'ActivityRecognitionResult"
  "metrics_refbox_msgs/ActivityRecognitionResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ActivityRecognitionResult>)))
  "Returns md5sum for a message object of type '<ActivityRecognitionResult>"
  "be6bf821856377e457fb3a0315d48f81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ActivityRecognitionResult)))
  "Returns md5sum for a message object of type 'ActivityRecognitionResult"
  "be6bf821856377e457fb3a0315d48f81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ActivityRecognitionResult>)))
  "Returns full string definition for message of type '<ActivityRecognitionResult>"
  (cl:format cl:nil "uint8 FEEDBACK=1~%uint8 RESULT=2~%uint8 message_type~%# list of activities ordered from most probable to least probable.~%# Up to a maximum of 5 activities will be considered for evaluation~%string[] activities~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ActivityRecognitionResult)))
  "Returns full string definition for message of type 'ActivityRecognitionResult"
  (cl:format cl:nil "uint8 FEEDBACK=1~%uint8 RESULT=2~%uint8 message_type~%# list of activities ordered from most probable to least probable.~%# Up to a maximum of 5 activities will be considered for evaluation~%string[] activities~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ActivityRecognitionResult>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'activities) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ActivityRecognitionResult>))
  "Converts a ROS message object to a list"
  (cl:list 'ActivityRecognitionResult
    (cl:cons ':message_type (message_type msg))
    (cl:cons ':activities (activities msg))
))
