; Auto-generated. Do not edit!


(cl:in-package metrics_refbox_msgs-msg)


;//! \htmlinclude ObjectDetectionResult.msg.html

(cl:defclass <ObjectDetectionResult> (roslisp-msg-protocol:ros-message)
  ((message_type
    :reader message_type
    :initarg :message_type
    :type cl:fixnum
    :initform 0)
   (result_type
    :reader result_type
    :initarg :result_type
    :type cl:fixnum
    :initform 0)
   (object_found
    :reader object_found
    :initarg :object_found
    :type cl:boolean
    :initform cl:nil)
   (box2d
    :reader box2d
    :initarg :box2d
    :type metrics_refbox_msgs-msg:BoundingBox2D
    :initform (cl:make-instance 'metrics_refbox_msgs-msg:BoundingBox2D))
   (box3d
    :reader box3d
    :initarg :box3d
    :type metrics_refbox_msgs-msg:BoundingBox3D
    :initform (cl:make-instance 'metrics_refbox_msgs-msg:BoundingBox3D))
   (image
    :reader image
    :initarg :image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (pointcloud
    :reader pointcloud
    :initarg :pointcloud
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2)))
)

(cl:defclass ObjectDetectionResult (<ObjectDetectionResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectDetectionResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectDetectionResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name metrics_refbox_msgs-msg:<ObjectDetectionResult> is deprecated: use metrics_refbox_msgs-msg:ObjectDetectionResult instead.")))

(cl:ensure-generic-function 'message_type-val :lambda-list '(m))
(cl:defmethod message_type-val ((m <ObjectDetectionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:message_type-val is deprecated.  Use metrics_refbox_msgs-msg:message_type instead.")
  (message_type m))

(cl:ensure-generic-function 'result_type-val :lambda-list '(m))
(cl:defmethod result_type-val ((m <ObjectDetectionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:result_type-val is deprecated.  Use metrics_refbox_msgs-msg:result_type instead.")
  (result_type m))

(cl:ensure-generic-function 'object_found-val :lambda-list '(m))
(cl:defmethod object_found-val ((m <ObjectDetectionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:object_found-val is deprecated.  Use metrics_refbox_msgs-msg:object_found instead.")
  (object_found m))

(cl:ensure-generic-function 'box2d-val :lambda-list '(m))
(cl:defmethod box2d-val ((m <ObjectDetectionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:box2d-val is deprecated.  Use metrics_refbox_msgs-msg:box2d instead.")
  (box2d m))

(cl:ensure-generic-function 'box3d-val :lambda-list '(m))
(cl:defmethod box3d-val ((m <ObjectDetectionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:box3d-val is deprecated.  Use metrics_refbox_msgs-msg:box3d instead.")
  (box3d m))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <ObjectDetectionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:image-val is deprecated.  Use metrics_refbox_msgs-msg:image instead.")
  (image m))

(cl:ensure-generic-function 'pointcloud-val :lambda-list '(m))
(cl:defmethod pointcloud-val ((m <ObjectDetectionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader metrics_refbox_msgs-msg:pointcloud-val is deprecated.  Use metrics_refbox_msgs-msg:pointcloud instead.")
  (pointcloud m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ObjectDetectionResult>)))
    "Constants for message type '<ObjectDetectionResult>"
  '((:FEEDBACK . 1)
    (:RESULT . 2)
    (:BOUNDING_BOX_2D . 1)
    (:BOUNDING_BOX_3D . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ObjectDetectionResult)))
    "Constants for message type 'ObjectDetectionResult"
  '((:FEEDBACK . 1)
    (:RESULT . 2)
    (:BOUNDING_BOX_2D . 1)
    (:BOUNDING_BOX_3D . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectDetectionResult>) ostream)
  "Serializes a message object of type '<ObjectDetectionResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'message_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'object_found) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'box2d) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'box3d) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pointcloud) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectDetectionResult>) istream)
  "Deserializes a message object of type '<ObjectDetectionResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'message_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result_type)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'object_found) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'box2d) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'box3d) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pointcloud) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectDetectionResult>)))
  "Returns string type for a message object of type '<ObjectDetectionResult>"
  "metrics_refbox_msgs/ObjectDetectionResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectDetectionResult)))
  "Returns string type for a message object of type 'ObjectDetectionResult"
  "metrics_refbox_msgs/ObjectDetectionResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectDetectionResult>)))
  "Returns md5sum for a message object of type '<ObjectDetectionResult>"
  "b9b748919c575e5d4c866ee9421fa93f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectDetectionResult)))
  "Returns md5sum for a message object of type 'ObjectDetectionResult"
  "b9b748919c575e5d4c866ee9421fa93f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectDetectionResult>)))
  "Returns full string definition for message of type '<ObjectDetectionResult>"
  (cl:format cl:nil "uint8 FEEDBACK=1~%uint8 RESULT=2~%uint8 message_type~%~%uint8 BOUNDING_BOX_2D=1~%uint8 BOUNDING_BOX_3D=2~%~%# set to either BOUNDING_BOX_2D or BOUNDING_BOX_3D~%uint8 result_type~%~%# set to true if target object has been found~%bool object_found~%~%# if result_type is BOUNDING_BOX_2D, box2d needs to be filled~%BoundingBox2D box2d~%~%# if result_type is BOUNDING_BOX_3D, box2d needs to be filled~%BoundingBox3D box3d~%~%# if result_type is BOUNDING_BOX_2D, image needs to be provided~%sensor_msgs/Image image~%# if result_type is BOUNDING_BOX_3D, pointcloud needs to be provided~%sensor_msgs/PointCloud2 pointcloud~%~%================================================================================~%MSG: metrics_refbox_msgs/BoundingBox2D~%uint32 min_x~%uint32 min_y~%uint32 max_x~%uint32 max_y~%~%================================================================================~%MSG: metrics_refbox_msgs/BoundingBox3D~%# Geometrical center~%geometry_msgs/Point center~%# Dimensions~%geometry_msgs/Vector3 dimensions~%# List of vertices; first bottom, then top, in clockwise direction~%geometry_msgs/Point[] vertices~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectDetectionResult)))
  "Returns full string definition for message of type 'ObjectDetectionResult"
  (cl:format cl:nil "uint8 FEEDBACK=1~%uint8 RESULT=2~%uint8 message_type~%~%uint8 BOUNDING_BOX_2D=1~%uint8 BOUNDING_BOX_3D=2~%~%# set to either BOUNDING_BOX_2D or BOUNDING_BOX_3D~%uint8 result_type~%~%# set to true if target object has been found~%bool object_found~%~%# if result_type is BOUNDING_BOX_2D, box2d needs to be filled~%BoundingBox2D box2d~%~%# if result_type is BOUNDING_BOX_3D, box2d needs to be filled~%BoundingBox3D box3d~%~%# if result_type is BOUNDING_BOX_2D, image needs to be provided~%sensor_msgs/Image image~%# if result_type is BOUNDING_BOX_3D, pointcloud needs to be provided~%sensor_msgs/PointCloud2 pointcloud~%~%================================================================================~%MSG: metrics_refbox_msgs/BoundingBox2D~%uint32 min_x~%uint32 min_y~%uint32 max_x~%uint32 max_y~%~%================================================================================~%MSG: metrics_refbox_msgs/BoundingBox3D~%# Geometrical center~%geometry_msgs/Point center~%# Dimensions~%geometry_msgs/Vector3 dimensions~%# List of vertices; first bottom, then top, in clockwise direction~%geometry_msgs/Point[] vertices~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectDetectionResult>))
  (cl:+ 0
     1
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'box2d))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'box3d))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pointcloud))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectDetectionResult>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectDetectionResult
    (cl:cons ':message_type (message_type msg))
    (cl:cons ':result_type (result_type msg))
    (cl:cons ':object_found (object_found msg))
    (cl:cons ':box2d (box2d msg))
    (cl:cons ':box3d (box3d msg))
    (cl:cons ':image (image msg))
    (cl:cons ':pointcloud (pointcloud msg))
))
