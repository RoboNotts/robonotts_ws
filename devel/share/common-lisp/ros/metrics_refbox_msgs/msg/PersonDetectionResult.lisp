; Auto-generated. Do not edit!


(cl:in-package metrics_refbox_msgs-msg)


;//! \htmlinclude PersonDetectionResult.msg.html

(cl:defclass <PersonDetectionResult> (roslisp-msg-protocol:ros-message)
  ((message_type
    :reader message_type
    :initarg :message_type
    :type cl:fixnum
    :initform 0)
   (person_found
    :reader person_found
    :initarg :person_found
    :type cl:boolean
    :initform cl:nil)
   (box2d
    :reader box2d
    :initarg :box2d
    :type metrics_refbox_msgs-msg:BoundingBox2D
    :initform (cl:make-instance 'metrics_refbox_msgs-msg:BoundingBox2D))
   (image
    :reader image
    :initarg :image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass PersonDetectionResult (<PersonDetectionResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PersonDetectionResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PersonDetectionResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name metrics_refbox_msgs-msg:<PersonDetectionResult> is deprecated: use metrics_refbox_msgs-msg:PersonDetectionResult instead.")))

(cl:ensure-generic-function 'message_type-val :lambda-list '(m))
(cl:defmethod message_type-val ((m <PersonDetectionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:message_type-val is deprecated.  Use metrics_refbox_msgs-msg:message_type instead.")
  (message_type m))

(cl:ensure-generic-function 'person_found-val :lambda-list '(m))
(cl:defmethod person_found-val ((m <PersonDetectionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:person_found-val is deprecated.  Use metrics_refbox_msgs-msg:person_found instead.")
  (person_found m))

(cl:ensure-generic-function 'box2d-val :lambda-list '(m))
(cl:defmethod box2d-val ((m <PersonDetectionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:box2d-val is deprecated.  Use metrics_refbox_msgs-msg:box2d instead.")
  (box2d m))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <PersonDetectionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:image-val is deprecated.  Use metrics_refbox_msgs-msg:image instead.")
  (image m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PersonDetectionResult>)))
    "Constants for message type '<PersonDetectionResult>"
  '((:FEEDBACK . 1)
    (:RESULT . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PersonDetectionResult)))
    "Constants for message type 'PersonDetectionResult"
  '((:FEEDBACK . 1)
    (:RESULT . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PersonDetectionResult>) ostream)
  "Serializes a message object of type '<PersonDetectionResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'message_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'person_found) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'box2d) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PersonDetectionResult>) istream)
  "Deserializes a message object of type '<PersonDetectionResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'message_type)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'person_found) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'box2d) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PersonDetectionResult>)))
  "Returns string type for a message object of type '<PersonDetectionResult>"
  "metrics_refbox_msgs/PersonDetectionResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PersonDetectionResult)))
  "Returns string type for a message object of type 'PersonDetectionResult"
  "metrics_refbox_msgs/PersonDetectionResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PersonDetectionResult>)))
  "Returns md5sum for a message object of type '<PersonDetectionResult>"
  "e9dd3e562d32c962b7c2882022afa06a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PersonDetectionResult)))
  "Returns md5sum for a message object of type 'PersonDetectionResult"
  "e9dd3e562d32c962b7c2882022afa06a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PersonDetectionResult>)))
  "Returns full string definition for message of type '<PersonDetectionResult>"
  (cl:format cl:nil "uint8 FEEDBACK=1~%uint8 RESULT=2~%uint8 message_type~%~%# set to true if a person has been found~%bool person_found~%~%# 2D bounding box of the person~%BoundingBox2D box2d~%~%# image which contains the person (corresponding to the 2D bounding box)~%sensor_msgs/Image image~%~%================================================================================~%MSG: metrics_refbox_msgs/BoundingBox2D~%uint32 min_x~%uint32 min_y~%uint32 max_x~%uint32 max_y~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PersonDetectionResult)))
  "Returns full string definition for message of type 'PersonDetectionResult"
  (cl:format cl:nil "uint8 FEEDBACK=1~%uint8 RESULT=2~%uint8 message_type~%~%# set to true if a person has been found~%bool person_found~%~%# 2D bounding box of the person~%BoundingBox2D box2d~%~%# image which contains the person (corresponding to the 2D bounding box)~%sensor_msgs/Image image~%~%================================================================================~%MSG: metrics_refbox_msgs/BoundingBox2D~%uint32 min_x~%uint32 min_y~%uint32 max_x~%uint32 max_y~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PersonDetectionResult>))
  (cl:+ 0
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'box2d))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PersonDetectionResult>))
  "Converts a ROS message object to a list"
  (cl:list 'PersonDetectionResult
    (cl:cons ':message_type (message_type msg))
    (cl:cons ':person_found (person_found msg))
    (cl:cons ':box2d (box2d msg))
    (cl:cons ':image (image msg))
))
