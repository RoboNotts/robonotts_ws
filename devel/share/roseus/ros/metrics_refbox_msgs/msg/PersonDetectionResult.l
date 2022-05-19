;; Auto-generated. Do not edit!


(when (boundp 'metrics_refbox_msgs::PersonDetectionResult)
  (if (not (find-package "METRICS_REFBOX_MSGS"))
    (make-package "METRICS_REFBOX_MSGS"))
  (shadow 'PersonDetectionResult (find-package "METRICS_REFBOX_MSGS")))
(unless (find-package "METRICS_REFBOX_MSGS::PERSONDETECTIONRESULT")
  (make-package "METRICS_REFBOX_MSGS::PERSONDETECTIONRESULT"))

(in-package "ROS")
;;//! \htmlinclude PersonDetectionResult.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(intern "*FEEDBACK*" (find-package "METRICS_REFBOX_MSGS::PERSONDETECTIONRESULT"))
(shadow '*FEEDBACK* (find-package "METRICS_REFBOX_MSGS::PERSONDETECTIONRESULT"))
(defconstant metrics_refbox_msgs::PersonDetectionResult::*FEEDBACK* 1)
(intern "*RESULT*" (find-package "METRICS_REFBOX_MSGS::PERSONDETECTIONRESULT"))
(shadow '*RESULT* (find-package "METRICS_REFBOX_MSGS::PERSONDETECTIONRESULT"))
(defconstant metrics_refbox_msgs::PersonDetectionResult::*RESULT* 2)

(defun metrics_refbox_msgs::PersonDetectionResult-to-symbol (const)
  (cond
        ((= const 1) 'metrics_refbox_msgs::PersonDetectionResult::*FEEDBACK*)
        ((= const 2) 'metrics_refbox_msgs::PersonDetectionResult::*RESULT*)
        (t nil)))

(defclass metrics_refbox_msgs::PersonDetectionResult
  :super ros::object
  :slots (_message_type _person_found _box2d _image ))

(defmethod metrics_refbox_msgs::PersonDetectionResult
  (:init
   (&key
    ((:message_type __message_type) 0)
    ((:person_found __person_found) nil)
    ((:box2d __box2d) (instance metrics_refbox_msgs::BoundingBox2D :init))
    ((:image __image) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _message_type (round __message_type))
   (setq _person_found __person_found)
   (setq _box2d __box2d)
   (setq _image __image)
   self)
  (:message_type
   (&optional __message_type)
   (if __message_type (setq _message_type __message_type)) _message_type)
  (:person_found
   (&optional (__person_found :null))
   (if (not (eq __person_found :null)) (setq _person_found __person_found)) _person_found)
  (:box2d
   (&rest __box2d)
   (if (keywordp (car __box2d))
       (send* _box2d __box2d)
     (progn
       (if __box2d (setq _box2d (car __box2d)))
       _box2d)))
  (:image
   (&rest __image)
   (if (keywordp (car __image))
       (send* _image __image)
     (progn
       (if __image (setq _image (car __image)))
       _image)))
  (:serialization-length
   ()
   (+
    ;; uint8 _message_type
    1
    ;; bool _person_found
    1
    ;; metrics_refbox_msgs/BoundingBox2D _box2d
    (send _box2d :serialization-length)
    ;; sensor_msgs/Image _image
    (send _image :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _message_type
       (write-byte _message_type s)
     ;; bool _person_found
       (if _person_found (write-byte -1 s) (write-byte 0 s))
     ;; metrics_refbox_msgs/BoundingBox2D _box2d
       (send _box2d :serialize s)
     ;; sensor_msgs/Image _image
       (send _image :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _message_type
     (setq _message_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _person_found
     (setq _person_found (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; metrics_refbox_msgs/BoundingBox2D _box2d
     (send _box2d :deserialize buf ptr-) (incf ptr- (send _box2d :serialization-length))
   ;; sensor_msgs/Image _image
     (send _image :deserialize buf ptr-) (incf ptr- (send _image :serialization-length))
   ;;
   self)
  )

(setf (get metrics_refbox_msgs::PersonDetectionResult :md5sum-) "e9dd3e562d32c962b7c2882022afa06a")
(setf (get metrics_refbox_msgs::PersonDetectionResult :datatype-) "metrics_refbox_msgs/PersonDetectionResult")
(setf (get metrics_refbox_msgs::PersonDetectionResult :definition-)
      "uint8 FEEDBACK=1
uint8 RESULT=2
uint8 message_type

# set to true if a person has been found
bool person_found

# 2D bounding box of the person
BoundingBox2D box2d

# image which contains the person (corresponding to the 2D bounding box)
sensor_msgs/Image image

================================================================================
MSG: metrics_refbox_msgs/BoundingBox2D
uint32 min_x
uint32 min_y
uint32 max_x
uint32 max_y

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

")



(provide :metrics_refbox_msgs/PersonDetectionResult "e9dd3e562d32c962b7c2882022afa06a")


