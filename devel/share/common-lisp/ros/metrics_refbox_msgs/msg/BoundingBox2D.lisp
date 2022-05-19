; Auto-generated. Do not edit!


(cl:in-package metrics_refbox_msgs-msg)


;//! \htmlinclude BoundingBox2D.msg.html

(cl:defclass <BoundingBox2D> (roslisp-msg-protocol:ros-message)
  ((min_x
    :reader min_x
    :initarg :min_x
    :type cl:integer
    :initform 0)
   (min_y
    :reader min_y
    :initarg :min_y
    :type cl:integer
    :initform 0)
   (max_x
    :reader max_x
    :initarg :max_x
    :type cl:integer
    :initform 0)
   (max_y
    :reader max_y
    :initarg :max_y
    :type cl:integer
    :initform 0))
)

(cl:defclass BoundingBox2D (<BoundingBox2D>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BoundingBox2D>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BoundingBox2D)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name metrics_refbox_msgs-msg:<BoundingBox2D> is deprecated: use metrics_refbox_msgs-msg:BoundingBox2D instead.")))

(cl:ensure-generic-function 'min_x-val :lambda-list '(m))
(cl:defmethod min_x-val ((m <BoundingBox2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:min_x-val is deprecated.  Use metrics_refbox_msgs-msg:min_x instead.")
  (min_x m))

(cl:ensure-generic-function 'min_y-val :lambda-list '(m))
(cl:defmethod min_y-val ((m <BoundingBox2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:min_y-val is deprecated.  Use metrics_refbox_msgs-msg:min_y instead.")
  (min_y m))

(cl:ensure-generic-function 'max_x-val :lambda-list '(m))
(cl:defmethod max_x-val ((m <BoundingBox2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:max_x-val is deprecated.  Use metrics_refbox_msgs-msg:max_x instead.")
  (max_x m))

(cl:ensure-generic-function 'max_y-val :lambda-list '(m))
(cl:defmethod max_y-val ((m <BoundingBox2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:max_y-val is deprecated.  Use metrics_refbox_msgs-msg:max_y instead.")
  (max_y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BoundingBox2D>) ostream)
  "Serializes a message object of type '<BoundingBox2D>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'min_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'min_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'min_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'min_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'min_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'min_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'min_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'min_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'max_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'max_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'max_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'max_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'max_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'max_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'max_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'max_y)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BoundingBox2D>) istream)
  "Deserializes a message object of type '<BoundingBox2D>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'min_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'min_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'min_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'min_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'min_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'min_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'min_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'min_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'max_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'max_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'max_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'max_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'max_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'max_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'max_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'max_y)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BoundingBox2D>)))
  "Returns string type for a message object of type '<BoundingBox2D>"
  "metrics_refbox_msgs/BoundingBox2D")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BoundingBox2D)))
  "Returns string type for a message object of type 'BoundingBox2D"
  "metrics_refbox_msgs/BoundingBox2D")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BoundingBox2D>)))
  "Returns md5sum for a message object of type '<BoundingBox2D>"
  "32cc77a889ecfebef439f3192db73e63")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BoundingBox2D)))
  "Returns md5sum for a message object of type 'BoundingBox2D"
  "32cc77a889ecfebef439f3192db73e63")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BoundingBox2D>)))
  "Returns full string definition for message of type '<BoundingBox2D>"
  (cl:format cl:nil "uint32 min_x~%uint32 min_y~%uint32 max_x~%uint32 max_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BoundingBox2D)))
  "Returns full string definition for message of type 'BoundingBox2D"
  (cl:format cl:nil "uint32 min_x~%uint32 min_y~%uint32 max_x~%uint32 max_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BoundingBox2D>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BoundingBox2D>))
  "Converts a ROS message object to a list"
  (cl:list 'BoundingBox2D
    (cl:cons ':min_x (min_x msg))
    (cl:cons ':min_y (min_y msg))
    (cl:cons ':max_x (max_x msg))
    (cl:cons ':max_y (max_y msg))
))
