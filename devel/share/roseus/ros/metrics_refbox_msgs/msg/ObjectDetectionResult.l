;; Auto-generated. Do not edit!


(when (boundp 'metrics_refbox_msgs::ObjectDetectionResult)
  (if (not (find-package "METRICS_REFBOX_MSGS"))
    (make-package "METRICS_REFBOX_MSGS"))
  (shadow 'ObjectDetectionResult (find-package "METRICS_REFBOX_MSGS")))
(unless (find-package "METRICS_REFBOX_MSGS::OBJECTDETECTIONRESULT")
  (make-package "METRICS_REFBOX_MSGS::OBJECTDETECTIONRESULT"))

(in-package "ROS")
;;//! \htmlinclude ObjectDetectionResult.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(intern "*FEEDBACK*" (find-package "METRICS_REFBOX_MSGS::OBJECTDETECTIONRESULT"))
(shadow '*FEEDBACK* (find-package "METRICS_REFBOX_MSGS::OBJECTDETECTIONRESULT"))
(defconstant metrics_refbox_msgs::ObjectDetectionResult::*FEEDBACK* 1)
(intern "*RESULT*" (find-package "METRICS_REFBOX_MSGS::OBJECTDETECTIONRESULT"))
(shadow '*RESULT* (find-package "METRICS_REFBOX_MSGS::OBJECTDETECTIONRESULT"))
(defconstant metrics_refbox_msgs::ObjectDetectionResult::*RESULT* 2)
(intern "*BOUNDING_BOX_2D*" (find-package "METRICS_REFBOX_MSGS::OBJECTDETECTIONRESULT"))
(shadow '*BOUNDING_BOX_2D* (find-package "METRICS_REFBOX_MSGS::OBJECTDETECTIONRESULT"))
(defconstant metrics_refbox_msgs::ObjectDetectionResult::*BOUNDING_BOX_2D* 1)
(intern "*BOUNDING_BOX_3D*" (find-package "METRICS_REFBOX_MSGS::OBJECTDETECTIONRESULT"))
(shadow '*BOUNDING_BOX_3D* (find-package "METRICS_REFBOX_MSGS::OBJECTDETECTIONRESULT"))
(defconstant metrics_refbox_msgs::ObjectDetectionResult::*BOUNDING_BOX_3D* 2)

(defun metrics_refbox_msgs::ObjectDetectionResult-to-symbol (const)
  (cond
        ((= const 1) 'metrics_refbox_msgs::ObjectDetectionResult::*FEEDBACK*)
        ((= const 2) 'metrics_refbox_msgs::ObjectDetectionResult::*RESULT*)
        ((= const 1) 'metrics_refbox_msgs::ObjectDetectionResult::*BOUNDING_BOX_2D*)
        ((= const 2) 'metrics_refbox_msgs::ObjectDetectionResult::*BOUNDING_BOX_3D*)
        (t nil)))

(defclass metrics_refbox_msgs::ObjectDetectionResult
  :super ros::object
  :slots (_message_type _result_type _object_found _box2d _box3d _image _pointcloud ))

(defmethod metrics_refbox_msgs::ObjectDetectionResult
  (:init
   (&key
    ((:message_type __message_type) 0)
    ((:result_type __result_type) 0)
    ((:object_found __object_found) nil)
    ((:box2d __box2d) (instance metrics_refbox_msgs::BoundingBox2D :init))
    ((:box3d __box3d) (instance metrics_refbox_msgs::BoundingBox3D :init))
    ((:image __image) (instance sensor_msgs::Image :init))
    ((:pointcloud __pointcloud) (instance sensor_msgs::PointCloud2 :init))
    )
   (send-super :init)
   (setq _message_type (round __message_type))
   (setq _result_type (round __result_type))
   (setq _object_found __object_found)
   (setq _box2d __box2d)
   (setq _box3d __box3d)
   (setq _image __image)
   (setq _pointcloud __pointcloud)
   self)
  (:message_type
   (&optional __message_type)
   (if __message_type (setq _message_type __message_type)) _message_type)
  (:result_type
   (&optional __result_type)
   (if __result_type (setq _result_type __result_type)) _result_type)
  (:object_found
   (&optional (__object_found :null))
   (if (not (eq __object_found :null)) (setq _object_found __object_found)) _object_found)
  (:box2d
   (&rest __box2d)
   (if (keywordp (car __box2d))
       (send* _box2d __box2d)
     (progn
       (if __box2d (setq _box2d (car __box2d)))
       _box2d)))
  (:box3d
   (&rest __box3d)
   (if (keywordp (car __box3d))
       (send* _box3d __box3d)
     (progn
       (if __box3d (setq _box3d (car __box3d)))
       _box3d)))
  (:image
   (&rest __image)
   (if (keywordp (car __image))
       (send* _image __image)
     (progn
       (if __image (setq _image (car __image)))
       _image)))
  (:pointcloud
   (&rest __pointcloud)
   (if (keywordp (car __pointcloud))
       (send* _pointcloud __pointcloud)
     (progn
       (if __pointcloud (setq _pointcloud (car __pointcloud)))
       _pointcloud)))
  (:serialization-length
   ()
   (+
    ;; uint8 _message_type
    1
    ;; uint8 _result_type
    1
    ;; bool _object_found
    1
    ;; metrics_refbox_msgs/BoundingBox2D _box2d
    (send _box2d :serialization-length)
    ;; metrics_refbox_msgs/BoundingBox3D _box3d
    (send _box3d :serialization-length)
    ;; sensor_msgs/Image _image
    (send _image :serialization-length)
    ;; sensor_msgs/PointCloud2 _pointcloud
    (send _pointcloud :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _message_type
       (write-byte _message_type s)
     ;; uint8 _result_type
       (write-byte _result_type s)
     ;; bool _object_found
       (if _object_found (write-byte -1 s) (write-byte 0 s))
     ;; metrics_refbox_msgs/BoundingBox2D _box2d
       (send _box2d :serialize s)
     ;; metrics_refbox_msgs/BoundingBox3D _box3d
       (send _box3d :serialize s)
     ;; sensor_msgs/Image _image
       (send _image :serialize s)
     ;; sensor_msgs/PointCloud2 _pointcloud
       (send _pointcloud :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _message_type
     (setq _message_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _result_type
     (setq _result_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _object_found
     (setq _object_found (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; metrics_refbox_msgs/BoundingBox2D _box2d
     (send _box2d :deserialize buf ptr-) (incf ptr- (send _box2d :serialization-length))
   ;; metrics_refbox_msgs/BoundingBox3D _box3d
     (send _box3d :deserialize buf ptr-) (incf ptr- (send _box3d :serialization-length))
   ;; sensor_msgs/Image _image
     (send _image :deserialize buf ptr-) (incf ptr- (send _image :serialization-length))
   ;; sensor_msgs/PointCloud2 _pointcloud
     (send _pointcloud :deserialize buf ptr-) (incf ptr- (send _pointcloud :serialization-length))
   ;;
   self)
  )

(setf (get metrics_refbox_msgs::ObjectDetectionResult :md5sum-) "b9b748919c575e5d4c866ee9421fa93f")
(setf (get metrics_refbox_msgs::ObjectDetectionResult :datatype-) "metrics_refbox_msgs/ObjectDetectionResult")
(setf (get metrics_refbox_msgs::ObjectDetectionResult :definition-)
      "uint8 FEEDBACK=1
uint8 RESULT=2
uint8 message_type

uint8 BOUNDING_BOX_2D=1
uint8 BOUNDING_BOX_3D=2

# set to either BOUNDING_BOX_2D or BOUNDING_BOX_3D
uint8 result_type

# set to true if target object has been found
bool object_found

# if result_type is BOUNDING_BOX_2D, box2d needs to be filled
BoundingBox2D box2d

# if result_type is BOUNDING_BOX_3D, box2d needs to be filled
BoundingBox3D box3d

# if result_type is BOUNDING_BOX_2D, image needs to be provided
sensor_msgs/Image image
# if result_type is BOUNDING_BOX_3D, pointcloud needs to be provided
sensor_msgs/PointCloud2 pointcloud

================================================================================
MSG: metrics_refbox_msgs/BoundingBox2D
uint32 min_x
uint32 min_y
uint32 max_x
uint32 max_y

================================================================================
MSG: metrics_refbox_msgs/BoundingBox3D
# Geometrical center
geometry_msgs/Point center
# Dimensions
geometry_msgs/Vector3 dimensions
# List of vertices; first bottom, then top, in clockwise direction
geometry_msgs/Point[] vertices

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

")



(provide :metrics_refbox_msgs/ObjectDetectionResult "b9b748919c575e5d4c866ee9421fa93f")


