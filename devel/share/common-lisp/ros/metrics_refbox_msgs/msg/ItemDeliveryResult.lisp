; Auto-generated. Do not edit!


(cl:in-package metrics_refbox_msgs-msg)


;//! \htmlinclude ItemDeliveryResult.msg.html

(cl:defclass <ItemDeliveryResult> (roslisp-msg-protocol:ros-message)
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
    :initform 0)
   (result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ItemDeliveryResult (<ItemDeliveryResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ItemDeliveryResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ItemDeliveryResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name metrics_refbox_msgs-msg:<ItemDeliveryResult> is deprecated: use metrics_refbox_msgs-msg:ItemDeliveryResult instead.")))

(cl:ensure-generic-function 'message_type-val :lambda-list '(m))
(cl:defmethod message_type-val ((m <ItemDeliveryResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:message_type-val is deprecated.  Use metrics_refbox_msgs-msg:message_type instead.")
  (message_type m))

(cl:ensure-generic-function 'phase-val :lambda-list '(m))
(cl:defmethod phase-val ((m <ItemDeliveryResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:phase-val is deprecated.  Use metrics_refbox_msgs-msg:phase instead.")
  (phase m))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <ItemDeliveryResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:image-val is deprecated.  Use metrics_refbox_msgs-msg:image instead.")
  (image m))

(cl:ensure-generic-function 'box2d-val :lambda-list '(m))
(cl:defmethod box2d-val ((m <ItemDeliveryResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:box2d-val is deprecated.  Use metrics_refbox_msgs-msg:box2d instead.")
  (box2d m))

(cl:ensure-generic-function 'human_pose-val :lambda-list '(m))
(cl:defmethod human_pose-val ((m <ItemDeliveryResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:human_pose-val is deprecated.  Use metrics_refbox_msgs-msg:human_pose instead.")
  (human_pose m))

(cl:ensure-generic-function 'human_reach_out_result-val :lambda-list '(m))
(cl:defmethod human_reach_out_result-val ((m <ItemDeliveryResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:human_reach_out_result-val is deprecated.  Use metrics_refbox_msgs-msg:human_reach_out_result instead.")
  (human_reach_out_result m))

(cl:ensure-generic-function 'grasp_result-val :lambda-list '(m))
(cl:defmethod grasp_result-val ((m <ItemDeliveryResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:grasp_result-val is deprecated.  Use metrics_refbox_msgs-msg:grasp_result instead.")
  (grasp_result m))

(cl:ensure-generic-function 'post_grasp_result-val :lambda-list '(m))
(cl:defmethod post_grasp_result-val ((m <ItemDeliveryResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:post_grasp_result-val is deprecated.  Use metrics_refbox_msgs-msg:post_grasp_result instead.")
  (post_grasp_result m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <ItemDeliveryResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:result-val is deprecated.  Use metrics_refbox_msgs-msg:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ItemDeliveryResult>)))
    "Constants for message type '<ItemDeliveryResult>"
  '((:FEEDBACK . 1)
    (:RESULT . 2)
    (:PHASE_NAV_TO_OBJECT . 1)
    (:PHASE_OBJECT_DETECTION . 2)
    (:PHASE_OBJECT_PICK . 3)
    (:PHASE_NAV_TO_PERSON . 4)
    (:PHASE_PERSON_DETECTION . 5)
    (:PHASE_HANDOVER . 6)
    (:HUMAN_POSE_LAYING . 1)
    (:HUMAN_POSE_STANDING . 2)
    (:HUMAN_POSE_SITTING . 3)
    (:HUMAN_REACHED_OUT . 1)
    (:HUMAN_DID_NOT_REACH_OUT . 2)
    (:GRASP_SUCCESSFUL . 1)
    (:GRASP_UNSUCCESSFUL . 2)
    (:OBJECT_DROPPED_AFTER_GRASP . 1)
    (:OBJECT_NOT_DROPPED_AFTER_GRASP . 2)
    (:RESULT_SUCCESS . 1)
    (:RESULT_FAILURE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ItemDeliveryResult)))
    "Constants for message type 'ItemDeliveryResult"
  '((:FEEDBACK . 1)
    (:RESULT . 2)
    (:PHASE_NAV_TO_OBJECT . 1)
    (:PHASE_OBJECT_DETECTION . 2)
    (:PHASE_OBJECT_PICK . 3)
    (:PHASE_NAV_TO_PERSON . 4)
    (:PHASE_PERSON_DETECTION . 5)
    (:PHASE_HANDOVER . 6)
    (:HUMAN_POSE_LAYING . 1)
    (:HUMAN_POSE_STANDING . 2)
    (:HUMAN_POSE_SITTING . 3)
    (:HUMAN_REACHED_OUT . 1)
    (:HUMAN_DID_NOT_REACH_OUT . 2)
    (:GRASP_SUCCESSFUL . 1)
    (:GRASP_UNSUCCESSFUL . 2)
    (:OBJECT_DROPPED_AFTER_GRASP . 1)
    (:OBJECT_NOT_DROPPED_AFTER_GRASP . 2)
    (:RESULT_SUCCESS . 1)
    (:RESULT_FAILURE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ItemDeliveryResult>) ostream)
  "Serializes a message object of type '<ItemDeliveryResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'message_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'phase)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'box2d) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'human_pose)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'human_reach_out_result)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'grasp_result)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'post_grasp_result)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ItemDeliveryResult>) istream)
  "Deserializes a message object of type '<ItemDeliveryResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'message_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'phase)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'box2d) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'human_pose)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'human_reach_out_result)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'grasp_result)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'post_grasp_result)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ItemDeliveryResult>)))
  "Returns string type for a message object of type '<ItemDeliveryResult>"
  "metrics_refbox_msgs/ItemDeliveryResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ItemDeliveryResult)))
  "Returns string type for a message object of type 'ItemDeliveryResult"
  "metrics_refbox_msgs/ItemDeliveryResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ItemDeliveryResult>)))
  "Returns md5sum for a message object of type '<ItemDeliveryResult>"
  "1f5b116dba66c515bfcf0a99c9bb4b7b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ItemDeliveryResult)))
  "Returns md5sum for a message object of type 'ItemDeliveryResult"
  "1f5b116dba66c515bfcf0a99c9bb4b7b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ItemDeliveryResult>)))
  "Returns full string definition for message of type '<ItemDeliveryResult>"
  (cl:format cl:nil "uint8 FEEDBACK=1~%uint8 RESULT=2~%uint8 message_type~%~%# feedback when each phase is complete~%uint8 PHASE_NAV_TO_OBJECT=1~%uint8 PHASE_OBJECT_DETECTION=2~%uint8 PHASE_OBJECT_PICK=3~%uint8 PHASE_NAV_TO_PERSON=4~%uint8 PHASE_PERSON_DETECTION=5~%uint8 PHASE_HANDOVER=6~%~%uint8 phase~%~%~%# for phase_object_detection and phase_person_detection~%sensor_msgs/Image image~%BoundingBox2D box2d~%~%~%# for phase_handover~%~%# enums for human_pose~%uint8 HUMAN_POSE_LAYING=1~%uint8 HUMAN_POSE_STANDING=2~%uint8 HUMAN_POSE_SITTING=3~%~%uint8 human_pose~%~%# enums for human_reach_out_result~%uint8 HUMAN_REACHED_OUT=1~%uint8 HUMAN_DID_NOT_REACH_OUT=2~%~%uint8 human_reach_out_result~%~%# enums for grasp result~%uint8 GRASP_SUCCESSFUL=1~%uint8 GRASP_UNSUCCESSFUL=2~%~%uint8 grasp_result~%~%~%# enums for post_grasp_result~%uint8 OBJECT_DROPPED_AFTER_GRASP=1~%uint8 OBJECT_NOT_DROPPED_AFTER_GRASP=2~%~%uint8 post_grasp_result~%~%~%## Result~%uint8 RESULT_SUCCESS=1~%uint8 RESULT_FAILURE=2~%uint8 result~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: metrics_refbox_msgs/BoundingBox2D~%uint32 min_x~%uint32 min_y~%uint32 max_x~%uint32 max_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ItemDeliveryResult)))
  "Returns full string definition for message of type 'ItemDeliveryResult"
  (cl:format cl:nil "uint8 FEEDBACK=1~%uint8 RESULT=2~%uint8 message_type~%~%# feedback when each phase is complete~%uint8 PHASE_NAV_TO_OBJECT=1~%uint8 PHASE_OBJECT_DETECTION=2~%uint8 PHASE_OBJECT_PICK=3~%uint8 PHASE_NAV_TO_PERSON=4~%uint8 PHASE_PERSON_DETECTION=5~%uint8 PHASE_HANDOVER=6~%~%uint8 phase~%~%~%# for phase_object_detection and phase_person_detection~%sensor_msgs/Image image~%BoundingBox2D box2d~%~%~%# for phase_handover~%~%# enums for human_pose~%uint8 HUMAN_POSE_LAYING=1~%uint8 HUMAN_POSE_STANDING=2~%uint8 HUMAN_POSE_SITTING=3~%~%uint8 human_pose~%~%# enums for human_reach_out_result~%uint8 HUMAN_REACHED_OUT=1~%uint8 HUMAN_DID_NOT_REACH_OUT=2~%~%uint8 human_reach_out_result~%~%# enums for grasp result~%uint8 GRASP_SUCCESSFUL=1~%uint8 GRASP_UNSUCCESSFUL=2~%~%uint8 grasp_result~%~%~%# enums for post_grasp_result~%uint8 OBJECT_DROPPED_AFTER_GRASP=1~%uint8 OBJECT_NOT_DROPPED_AFTER_GRASP=2~%~%uint8 post_grasp_result~%~%~%## Result~%uint8 RESULT_SUCCESS=1~%uint8 RESULT_FAILURE=2~%uint8 result~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: metrics_refbox_msgs/BoundingBox2D~%uint32 min_x~%uint32 min_y~%uint32 max_x~%uint32 max_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ItemDeliveryResult>))
  (cl:+ 0
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'box2d))
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ItemDeliveryResult>))
  "Converts a ROS message object to a list"
  (cl:list 'ItemDeliveryResult
    (cl:cons ':message_type (message_type msg))
    (cl:cons ':phase (phase msg))
    (cl:cons ':image (image msg))
    (cl:cons ':box2d (box2d msg))
    (cl:cons ':human_pose (human_pose msg))
    (cl:cons ':human_reach_out_result (human_reach_out_result msg))
    (cl:cons ':grasp_result (grasp_result msg))
    (cl:cons ':post_grasp_result (post_grasp_result msg))
    (cl:cons ':result (result msg))
))
