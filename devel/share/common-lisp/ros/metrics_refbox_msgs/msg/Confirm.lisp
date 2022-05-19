; Auto-generated. Do not edit!


(cl:in-package metrics_refbox_msgs-msg)


;//! \htmlinclude Confirm.msg.html

(cl:defclass <Confirm> (roslisp-msg-protocol:ros-message)
  ((uid
    :reader uid
    :initarg :uid
    :type cl:string
    :initform "")
   (data
    :reader data
    :initarg :data
    :type cl:boolean
    :initform cl:nil)
   (rosbag_filename
    :reader rosbag_filename
    :initarg :rosbag_filename
    :type cl:string
    :initform ""))
)

(cl:defclass Confirm (<Confirm>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Confirm>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Confirm)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name metrics_refbox_msgs-msg:<Confirm> is deprecated: use metrics_refbox_msgs-msg:Confirm instead.")))

(cl:ensure-generic-function 'uid-val :lambda-list '(m))
(cl:defmethod uid-val ((m <Confirm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:uid-val is deprecated.  Use metrics_refbox_msgs-msg:uid instead.")
  (uid m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <Confirm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:data-val is deprecated.  Use metrics_refbox_msgs-msg:data instead.")
  (data m))

(cl:ensure-generic-function 'rosbag_filename-val :lambda-list '(m))
(cl:defmethod rosbag_filename-val ((m <Confirm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:rosbag_filename-val is deprecated.  Use metrics_refbox_msgs-msg:rosbag_filename instead.")
  (rosbag_filename m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Confirm>) ostream)
  "Serializes a message object of type '<Confirm>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'uid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'uid))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'data) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'rosbag_filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'rosbag_filename))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Confirm>) istream)
  "Deserializes a message object of type '<Confirm>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'uid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'data) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rosbag_filename) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'rosbag_filename) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Confirm>)))
  "Returns string type for a message object of type '<Confirm>"
  "metrics_refbox_msgs/Confirm")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Confirm)))
  "Returns string type for a message object of type 'Confirm"
  "metrics_refbox_msgs/Confirm")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Confirm>)))
  "Returns md5sum for a message object of type '<Confirm>"
  "417835597ece8052d8963da89d333ccd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Confirm)))
  "Returns md5sum for a message object of type 'Confirm"
  "417835597ece8052d8963da89d333ccd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Confirm>)))
  "Returns full string definition for message of type '<Confirm>"
  (cl:format cl:nil "string uid~%bool data~%string rosbag_filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Confirm)))
  "Returns full string definition for message of type 'Confirm"
  (cl:format cl:nil "string uid~%bool data~%string rosbag_filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Confirm>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'uid))
     1
     4 (cl:length (cl:slot-value msg 'rosbag_filename))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Confirm>))
  "Converts a ROS message object to a list"
  (cl:list 'Confirm
    (cl:cons ':uid (uid msg))
    (cl:cons ':data (data msg))
    (cl:cons ':rosbag_filename (rosbag_filename msg))
))
