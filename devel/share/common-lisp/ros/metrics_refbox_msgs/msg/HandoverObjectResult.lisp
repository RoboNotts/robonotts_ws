; Auto-generated. Do not edit!


(cl:in-package metrics_refbox_msgs-msg)


;//! \htmlinclude HandoverObjectResult.msg.html

(cl:defclass <HandoverObjectResult> (roslisp-msg-protocol:ros-message)
  ((message_type
    :reader message_type
    :initarg :message_type
    :type cl:fixnum
    :initform 0)
   (human_pose
    :reader human_pose
    :initarg :human_pose
    :type cl:fixnum
    :initform 0)
   (human_reach_out_result
    :reader human_reach_out_result
    :initarg :human_reach_out_result
    :type cl:fixnum
    :initform 0)
   (grasp_result
    :reader grasp_result
    :initarg :grasp_result
    :type cl:fixnum
    :initform 0)
   (post_grasp_result
    :reader post_grasp_result
    :initarg :post_grasp_result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass HandoverObjectResult (<HandoverObjectResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HandoverObjectResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HandoverObjectResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name metrics_refbox_msgs-msg:<HandoverObjectResult> is deprecated: use metrics_refbox_msgs-msg:HandoverObjectResult instead.")))

(cl:ensure-generic-function 'message_type-val :lambda-list '(m))
(cl:defmethod message_type-val ((m <HandoverObjectResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:message_type-val is deprecated.  Use metrics_refbox_msgs-msg:message_type instead.")
  (message_type m))

(cl:ensure-generic-function 'human_pose-val :lambda-list '(m))
(cl:defmethod human_pose-val ((m <HandoverObjectResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:human_pose-val is deprecated.  Use metrics_refbox_msgs-msg:human_pose instead.")
  (human_pose m))

(cl:ensure-generic-function 'human_reach_out_result-val :lambda-list '(m))
(cl:defmethod human_reach_out_result-val ((m <HandoverObjectResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:human_reach_out_result-val is deprecated.  Use metrics_refbox_msgs-msg:human_reach_out_result instead.")
  (human_reach_out_result m))

(cl:ensure-generic-function 'grasp_result-val :lambda-list '(m))
(cl:defmethod grasp_result-val ((m <HandoverObjectResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:grasp_result-val is deprecated.  Use metrics_refbox_msgs-msg:grasp_result instead.")
  (grasp_result m))

(cl:ensure-generic-function 'post_grasp_result-val :lambda-list '(m))
(cl:defmethod post_grasp_result-val ((m <HandoverObjectResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:post_grasp_result-val is deprecated.  Use metrics_refbox_msgs-msg:post_grasp_result instead.")
  (post_grasp_result m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<HandoverObjectResult>)))
    "Constants for message type '<HandoverObjectResult>"
  '((:FEEDBACK . 1)
    (:RESULT . 2)
    (:HUMAN_POSE_LAYING . 1)
    (:HUMAN_POSE_STANDING . 2)
    (:HUMAN_POSE_SITTING . 3)
    (:HUMAN_REACHED_OUT . 1)
    (:HUMAN_DID_NOT_REACH_OUT . 2)
    (:GRASP_SUCCESSFUL . 1)
    (:GRASP_UNSUCCESSFUL . 2)
    (:OBJECT_DROPPED_AFTER_GRASP . 1)
    (:OBJECT_NOT_DROPPED_AFTER_GRASP . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'HandoverObjectResult)))
    "Constants for message type 'HandoverObjectResult"
  '((:FEEDBACK . 1)
    (:RESULT . 2)
    (:HUMAN_POSE_LAYING . 1)
    (:HUMAN_POSE_STANDING . 2)
    (:HUMAN_POSE_SITTING . 3)
    (:HUMAN_REACHED_OUT . 1)
    (:HUMAN_DID_NOT_REACH_OUT . 2)
    (:GRASP_SUCCESSFUL . 1)
    (:GRASP_UNSUCCESSFUL . 2)
    (:OBJECT_DROPPED_AFTER_GRASP . 1)
    (:OBJECT_NOT_DROPPED_AFTER_GRASP . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HandoverObjectResult>) ostream)
  "Serializes a message object of type '<HandoverObjectResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'message_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'human_pose)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'human_reach_out_result)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'grasp_result)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'post_grasp_result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HandoverObjectResult>) istream)
  "Deserializes a message object of type '<HandoverObjectResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'message_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'human_pose)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'human_reach_out_result)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'grasp_result)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'post_grasp_result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HandoverObjectResult>)))
  "Returns string type for a message object of type '<HandoverObjectResult>"
  "metrics_refbox_msgs/HandoverObjectResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HandoverObjectResult)))
  "Returns string type for a message object of type 'HandoverObjectResult"
  "metrics_refbox_msgs/HandoverObjectResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HandoverObjectResult>)))
  "Returns md5sum for a message object of type '<HandoverObjectResult>"
  "3d548e8447af165afb4ca080bc119755")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HandoverObjectResult)))
  "Returns md5sum for a message object of type 'HandoverObjectResult"
  "3d548e8447af165afb4ca080bc119755")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HandoverObjectResult>)))
  "Returns full string definition for message of type '<HandoverObjectResult>"
  (cl:format cl:nil "uint8 FEEDBACK=1~%uint8 RESULT=2~%uint8 message_type~%~%# enums for human_pose~%uint8 HUMAN_POSE_LAYING=1~%uint8 HUMAN_POSE_STANDING=2~%uint8 HUMAN_POSE_SITTING=3~%~%~%uint8 human_pose~%~%# enums for human_reach_out_result~%uint8 HUMAN_REACHED_OUT=1~%uint8 HUMAN_DID_NOT_REACH_OUT=2~%~%uint8 human_reach_out_result~%~%# enums for grasp result~%uint8 GRASP_SUCCESSFUL=1~%uint8 GRASP_UNSUCCESSFUL=2~%~%uint8 grasp_result~%~%~%# enums for post_grasp_result~%uint8 OBJECT_DROPPED_AFTER_GRASP=1~%uint8 OBJECT_NOT_DROPPED_AFTER_GRASP=2~%~%uint8 post_grasp_result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HandoverObjectResult)))
  "Returns full string definition for message of type 'HandoverObjectResult"
  (cl:format cl:nil "uint8 FEEDBACK=1~%uint8 RESULT=2~%uint8 message_type~%~%# enums for human_pose~%uint8 HUMAN_POSE_LAYING=1~%uint8 HUMAN_POSE_STANDING=2~%uint8 HUMAN_POSE_SITTING=3~%~%~%uint8 human_pose~%~%# enums for human_reach_out_result~%uint8 HUMAN_REACHED_OUT=1~%uint8 HUMAN_DID_NOT_REACH_OUT=2~%~%uint8 human_reach_out_result~%~%# enums for grasp result~%uint8 GRASP_SUCCESSFUL=1~%uint8 GRASP_UNSUCCESSFUL=2~%~%uint8 grasp_result~%~%~%# enums for post_grasp_result~%uint8 OBJECT_DROPPED_AFTER_GRASP=1~%uint8 OBJECT_NOT_DROPPED_AFTER_GRASP=2~%~%uint8 post_grasp_result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HandoverObjectResult>))
  (cl:+ 0
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HandoverObjectResult>))
  "Converts a ROS message object to a list"
  (cl:list 'HandoverObjectResult
    (cl:cons ':message_type (message_type msg))
    (cl:cons ':human_pose (human_pose msg))
    (cl:cons ':human_reach_out_result (human_reach_out_result msg))
    (cl:cons ':grasp_result (grasp_result msg))
    (cl:cons ':post_grasp_result (post_grasp_result msg))
))
