; Auto-generated. Do not edit!


(cl:in-package metrics_refbox_msgs-msg)


;//! \htmlinclude Command.msg.html

(cl:defclass <Command> (roslisp-msg-protocol:ros-message)
  ((task
    :reader task
    :initarg :task
    :type cl:fixnum
    :initform 0)
   (command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0)
   (task_config
    :reader task_config
    :initarg :task_config
    :type cl:string
    :initform "")
   (uid
    :reader uid
    :initarg :uid
    :type cl:string
    :initform ""))
)

(cl:defclass Command (<Command>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Command>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Command)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name metrics_refbox_msgs-msg:<Command> is deprecated: use metrics_refbox_msgs-msg:Command instead.")))

(cl:ensure-generic-function 'task-val :lambda-list '(m))
(cl:defmethod task-val ((m <Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:task-val is deprecated.  Use metrics_refbox_msgs-msg:task instead.")
  (task m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:command-val is deprecated.  Use metrics_refbox_msgs-msg:command instead.")
  (command m))

(cl:ensure-generic-function 'task_config-val :lambda-list '(m))
(cl:defmethod task_config-val ((m <Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:task_config-val is deprecated.  Use metrics_refbox_msgs-msg:task_config instead.")
  (task_config m))

(cl:ensure-generic-function 'uid-val :lambda-list '(m))
(cl:defmethod uid-val ((m <Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:uid-val is deprecated.  Use metrics_refbox_msgs-msg:uid instead.")
  (uid m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Command>)))
    "Constants for message type '<Command>"
  '((:OBJECT_DETECTION . 1)
    (:PERSON_DETECTION . 2)
    (:ACTIVITY_RECOGNITION . 3)
    (:GESTURE_RECOGNITION . 4)
    (:TASK_ORIENTED_GRASPING . 5)
    (:HANDOVER_OBJECT . 6)
    (:RECEIVE_OBJECT . 7)
    (:ASSESS_ACTIVITY_STATE . 8)
    (:ITEM_DELIVERY . 9)
    (:START . 1)
    (:STOP . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Command)))
    "Constants for message type 'Command"
  '((:OBJECT_DETECTION . 1)
    (:PERSON_DETECTION . 2)
    (:ACTIVITY_RECOGNITION . 3)
    (:GESTURE_RECOGNITION . 4)
    (:TASK_ORIENTED_GRASPING . 5)
    (:HANDOVER_OBJECT . 6)
    (:RECEIVE_OBJECT . 7)
    (:ASSESS_ACTIVITY_STATE . 8)
    (:ITEM_DELIVERY . 9)
    (:START . 1)
    (:STOP . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Command>) ostream)
  "Serializes a message object of type '<Command>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'task_config))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'task_config))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'uid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'uid))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Command>) istream)
  "Deserializes a message object of type '<Command>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'task_config) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'task_config) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'uid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Command>)))
  "Returns string type for a message object of type '<Command>"
  "metrics_refbox_msgs/Command")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Command)))
  "Returns string type for a message object of type 'Command"
  "metrics_refbox_msgs/Command")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Command>)))
  "Returns md5sum for a message object of type '<Command>"
  "2f0442d04a8cefd06266d146bdcdb55f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Command)))
  "Returns md5sum for a message object of type 'Command"
  "2f0442d04a8cefd06266d146bdcdb55f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Command>)))
  "Returns full string definition for message of type '<Command>"
  (cl:format cl:nil "# task ENUMS~%uint8 OBJECT_DETECTION=1~%uint8 PERSON_DETECTION=2~%uint8 ACTIVITY_RECOGNITION=3~%uint8 GESTURE_RECOGNITION=4~%uint8 TASK_ORIENTED_GRASPING=5~%uint8 HANDOVER_OBJECT=6~%uint8 RECEIVE_OBJECT=7~%uint8 ASSESS_ACTIVITY_STATE=8~%uint8 ITEM_DELIVERY=9~%~%~%# command ENUMS~%uint8 START=1~%uint8 STOP=2~%~%~%uint8 task~%uint8 command~%~%# json string with additional info for specific benchmarks~%string task_config~%~%# unique identifier for this message~%string uid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Command)))
  "Returns full string definition for message of type 'Command"
  (cl:format cl:nil "# task ENUMS~%uint8 OBJECT_DETECTION=1~%uint8 PERSON_DETECTION=2~%uint8 ACTIVITY_RECOGNITION=3~%uint8 GESTURE_RECOGNITION=4~%uint8 TASK_ORIENTED_GRASPING=5~%uint8 HANDOVER_OBJECT=6~%uint8 RECEIVE_OBJECT=7~%uint8 ASSESS_ACTIVITY_STATE=8~%uint8 ITEM_DELIVERY=9~%~%~%# command ENUMS~%uint8 START=1~%uint8 STOP=2~%~%~%uint8 task~%uint8 command~%~%# json string with additional info for specific benchmarks~%string task_config~%~%# unique identifier for this message~%string uid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Command>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'task_config))
     4 (cl:length (cl:slot-value msg 'uid))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Command>))
  "Converts a ROS message object to a list"
  (cl:list 'Command
    (cl:cons ':task (task msg))
    (cl:cons ':command (command msg))
    (cl:cons ':task_config (task_config msg))
    (cl:cons ':uid (uid msg))
))
