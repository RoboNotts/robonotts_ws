;; Auto-generated. Do not edit!


(when (boundp 'metrics_refbox_msgs::AssessActivityStateResult)
  (if (not (find-package "METRICS_REFBOX_MSGS"))
    (make-package "METRICS_REFBOX_MSGS"))
  (shadow 'AssessActivityStateResult (find-package "METRICS_REFBOX_MSGS")))
(unless (find-package "METRICS_REFBOX_MSGS::ASSESSACTIVITYSTATERESULT")
  (make-package "METRICS_REFBOX_MSGS::ASSESSACTIVITYSTATERESULT"))

(in-package "ROS")
;;//! \htmlinclude AssessActivityStateResult.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(intern "*FEEDBACK*" (find-package "METRICS_REFBOX_MSGS::ASSESSACTIVITYSTATERESULT"))
(shadow '*FEEDBACK* (find-package "METRICS_REFBOX_MSGS::ASSESSACTIVITYSTATERESULT"))
(defconstant metrics_refbox_msgs::AssessActivityStateResult::*FEEDBACK* 1)
(intern "*RESULT*" (find-package "METRICS_REFBOX_MSGS::ASSESSACTIVITYSTATERESULT"))
(shadow '*RESULT* (find-package "METRICS_REFBOX_MSGS::ASSESSACTIVITYSTATERESULT"))
(defconstant metrics_refbox_msgs::AssessActivityStateResult::*RESULT* 2)
(intern "*PHASE_DETECTION*" (find-package "METRICS_REFBOX_MSGS::ASSESSACTIVITYSTATERESULT"))
(shadow '*PHASE_DETECTION* (find-package "METRICS_REFBOX_MSGS::ASSESSACTIVITYSTATERESULT"))
(defconstant metrics_refbox_msgs::AssessActivityStateResult::*PHASE_DETECTION* 1)
(intern "*PHASE_VISUAL_ASSESSMENT*" (find-package "METRICS_REFBOX_MSGS::ASSESSACTIVITYSTATERESULT"))
(shadow '*PHASE_VISUAL_ASSESSMENT* (find-package "METRICS_REFBOX_MSGS::ASSESSACTIVITYSTATERESULT"))
(defconstant metrics_refbox_msgs::AssessActivityStateResult::*PHASE_VISUAL_ASSESSMENT* 2)
(intern "*PHASE_VERBAL_ASSESSMENT*" (find-package "METRICS_REFBOX_MSGS::ASSESSACTIVITYSTATERESULT"))
(shadow '*PHASE_VERBAL_ASSESSMENT* (find-package "METRICS_REFBOX_MSGS::ASSESSACTIVITYSTATERESULT"))
(defconstant metrics_refbox_msgs::AssessActivityStateResult::*PHASE_VERBAL_ASSESSMENT* 3)

(defun metrics_refbox_msgs::AssessActivityStateResult-to-symbol (const)
  (cond
        ((= const 1) 'metrics_refbox_msgs::AssessActivityStateResult::*FEEDBACK*)
        ((= const 2) 'metrics_refbox_msgs::AssessActivityStateResult::*RESULT*)
        ((= const 1) 'metrics_refbox_msgs::AssessActivityStateResult::*PHASE_DETECTION*)
        ((= const 2) 'metrics_refbox_msgs::AssessActivityStateResult::*PHASE_VISUAL_ASSESSMENT*)
        ((= const 3) 'metrics_refbox_msgs::AssessActivityStateResult::*PHASE_VERBAL_ASSESSMENT*)
        (t nil)))

(defclass metrics_refbox_msgs::AssessActivityStateResult
  :super ros::object
  :slots (_message_type _phase _image _box2d _activities ))

(defmethod metrics_refbox_msgs::AssessActivityStateResult
  (:init
   (&key
    ((:message_type __message_type) 0)
    ((:phase __phase) 0)
    ((:image __image) (instance sensor_msgs::Image :init))
    ((:box2d __box2d) (instance metrics_refbox_msgs::BoundingBox2D :init))
    ((:activities __activities) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _message_type (round __message_type))
   (setq _phase (round __phase))
   (setq _image __image)
   (setq _box2d __box2d)
   (setq _activities __activities)
   self)
  (:message_type
   (&optional __message_type)
   (if __message_type (setq _message_type __message_type)) _message_type)
  (:phase
   (&optional __phase)
   (if __phase (setq _phase __phase)) _phase)
  (:image
   (&rest __image)
   (if (keywordp (car __image))
       (send* _image __image)
     (progn
       (if __image (setq _image (car __image)))
       _image)))
  (:box2d
   (&rest __box2d)
   (if (keywordp (car __box2d))
       (send* _box2d __box2d)
     (progn
       (if __box2d (setq _box2d (car __box2d)))
       _box2d)))
  (:activities
   (&optional __activities)
   (if __activities (setq _activities __activities)) _activities)
  (:serialization-length
   ()
   (+
    ;; uint8 _message_type
    1
    ;; uint8 _phase
    1
    ;; sensor_msgs/Image _image
    (send _image :serialization-length)
    ;; metrics_refbox_msgs/BoundingBox2D _box2d
    (send _box2d :serialization-length)
    ;; string[] _activities
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _activities)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _message_type
       (write-byte _message_type s)
     ;; uint8 _phase
       (write-byte _phase s)
     ;; sensor_msgs/Image _image
       (send _image :serialize s)
     ;; metrics_refbox_msgs/BoundingBox2D _box2d
       (send _box2d :serialize s)
     ;; string[] _activities
     (write-long (length _activities) s)
     (dolist (elem _activities)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _message_type
     (setq _message_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _phase
     (setq _phase (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; sensor_msgs/Image _image
     (send _image :deserialize buf ptr-) (incf ptr- (send _image :serialization-length))
   ;; metrics_refbox_msgs/BoundingBox2D _box2d
     (send _box2d :deserialize buf ptr-) (incf ptr- (send _box2d :serialization-length))
   ;; string[] _activities
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _activities (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _activities i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get metrics_refbox_msgs::AssessActivityStateResult :md5sum-) "158623e93d31a5f8e12464016a13faf0")
(setf (get metrics_refbox_msgs::AssessActivityStateResult :datatype-) "metrics_refbox_msgs/AssessActivityStateResult")
(setf (get metrics_refbox_msgs::AssessActivityStateResult :definition-)
      "uint8 FEEDBACK=1
uint8 RESULT=2
uint8 message_type

# feedback
uint8 PHASE_DETECTION=1
uint8 PHASE_VISUAL_ASSESSMENT=2
uint8 PHASE_VERBAL_ASSESSMENT=3

uint8 phase

# phase: detection
sensor_msgs/Image image
BoundingBox2D box2d

# for all of the following phases/result
# we need to return a list of activities:
#
# phase: visual assessment
# phase: verbal assessment
# final result

# list of activities ordered from most probable to least probable.
# Up to a maximum of 5 activities will be considered for evaluation
string[] activities

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
MSG: metrics_refbox_msgs/BoundingBox2D
uint32 min_x
uint32 min_y
uint32 max_x
uint32 max_y

")



(provide :metrics_refbox_msgs/AssessActivityStateResult "158623e93d31a5f8e12464016a13faf0")


