; Auto-generated. Do not edit!


(cl:in-package metrics_refbox_msgs-msg)


;//! \htmlinclude AssessActivityStateResult.msg.html

(cl:defclass <AssessActivityStateResult> (roslisp-msg-protocol:ros-message)
  ((message_type
    :reader message_type
    :initarg :message_type
    :type cl:fixnum
    :initform 0)
   (phase
    :reader phase
    :initarg :phase
    :type cl:fixnum
    :initform 0)
   (image
    :reader image
    :initarg :image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (box2d
    :reader box2d
    :initarg :box2d
    :type metrics_refbox_msgs-msg:BoundingBox2D
    :initform (cl:make-instance 'metrics_refbox_msgs-msg:BoundingBox2D))
   (activities
    :reader activities
    :initarg :activities
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass AssessActivityStateResult (<AssessActivityStateResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AssessActivityStateResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AssessActivityStateResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name metrics_refbox_msgs-msg:<AssessActivityStateResult> is deprecated: use metrics_refbox_msgs-msg:AssessActivityStateResult instead.")))

(cl:ensure-generic-function 'message_type-val :lambda-list '(m))
(cl:defmethod message_type-val ((m <AssessActivityStateResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:message_type-val is deprecated.  Use metrics_refbox_msgs-msg:message_type instead.")
  (message_type m))

(cl:ensure-generic-function 'phase-val :lambda-list '(m))
(cl:defmethod phase-val ((m <AssessActivityStateResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:phase-val is deprecated.  Use metrics_refbox_msgs-msg:phase instead.")
  (phase m))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <AssessActivityStateResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:image-val is deprecated.  Use metrics_refbox_msgs-msg:image instead.")
  (image m))

(cl:ensure-generic-function 'box2d-val :lambda-list '(m))
(cl:defmethod box2d-val ((m <AssessActivityStateResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:box2d-val is deprecated.  Use metrics_refbox_msgs-msg:box2d instead.")
  (box2d m))

(cl:ensure-generic-function 'activities-val :lambda-list '(m))
(cl:defmethod activities-val ((m <AssessActivityStateResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:activities-val is deprecated.  Use metrics_refbox_msgs-msg:activities instead.")
  (activities m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AssessActivityStateResult>)))
    "Constants for message type '<AssessActivityStateResult>"
  '((:FEEDBACK . 1)
    (:RESULT . 2)
    (:PHASE_DETECTION . 1)
    (:PHASE_VISUAL_ASSESSMENT . 2)
    (:PHASE_VERBAL_ASSESSMENT . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AssessActivityStateResult)))
    "Constants for message type 'AssessActivityStateResult"
  '((:FEEDBACK . 1)
    (:RESULT . 2)
    (:PHASE_DETECTION . 1)
    (:PHASE_VISUAL_ASSESSMENT . 2)
    (:PHASE_VERBAL_ASSESSMENT . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AssessActivityStateResult>) ostream)
  "Serializes a message object of type '<AssessActivityStateResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'message_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'phase)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'box2d) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AssessActivityStateResult>) istream)
  "Deserializes a message object of type '<AssessActivityStateResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'message_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'phase)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'box2d) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AssessActivityStateResult>)))
  "Returns string type for a message object of type '<AssessActivityStateResult>"
  "metrics_refbox_msgs/AssessActivityStateResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AssessActivityStateResult)))
  "Returns string type for a message object of type 'AssessActivityStateResult"
  "metrics_refbox_msgs/AssessActivityStateResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AssessActivityStateResult>)))
  "Returns md5sum for a message object of type '<AssessActivityStateResult>"
  "158623e93d31a5f8e12464016a13faf0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AssessActivityStateResult)))
  "Returns md5sum for a message object of type 'AssessActivityStateResult"
  "158623e93d31a5f8e12464016a13faf0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AssessActivityStateResult>)))
  "Returns full string definition for message of type '<AssessActivityStateResult>"
  (cl:format cl:nil "uint8 FEEDBACK=1~%uint8 RESULT=2~%uint8 message_type~%~%# feedback~%uint8 PHASE_DETECTION=1~%uint8 PHASE_VISUAL_ASSESSMENT=2~%uint8 PHASE_VERBAL_ASSESSMENT=3~%~%uint8 phase~%~%# phase: detection~%sensor_msgs/Image image~%BoundingBox2D box2d~%~%# for all of the following phases/result~%# we need to return a list of activities:~%#~%# phase: visual assessment~%# phase: verbal assessment~%# final result~%~%# list of activities ordered from most probable to least probable.~%# Up to a maximum of 5 activities will be considered for evaluation~%string[] activities~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: metrics_refbox_msgs/BoundingBox2D~%uint32 min_x~%uint32 min_y~%uint32 max_x~%uint32 max_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AssessActivityStateResult)))
  "Returns full string definition for message of type 'AssessActivityStateResult"
  (cl:format cl:nil "uint8 FEEDBACK=1~%uint8 RESULT=2~%uint8 message_type~%~%# feedback~%uint8 PHASE_DETECTION=1~%uint8 PHASE_VISUAL_ASSESSMENT=2~%uint8 PHASE_VERBAL_ASSESSMENT=3~%~%uint8 phase~%~%# phase: detection~%sensor_msgs/Image image~%BoundingBox2D box2d~%~%# for all of the following phases/result~%# we need to return a list of activities:~%#~%# phase: visual assessment~%# phase: verbal assessment~%# final result~%~%# list of activities ordered from most probable to least probable.~%# Up to a maximum of 5 activities will be considered for evaluation~%string[] activities~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: metrics_refbox_msgs/BoundingBox2D~%uint32 min_x~%uint32 min_y~%uint32 max_x~%uint32 max_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AssessActivityStateResult>))
  (cl:+ 0
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'box2d))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'activities) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AssessActivityStateResult>))
  "Converts a ROS message object to a list"
  (cl:list 'AssessActivityStateResult
    (cl:cons ':message_type (message_type msg))
    (cl:cons ':phase (phase msg))
    (cl:cons ':image (image msg))
    (cl:cons ':box2d (box2d msg))
    (cl:cons ':activities (activities msg))
))
