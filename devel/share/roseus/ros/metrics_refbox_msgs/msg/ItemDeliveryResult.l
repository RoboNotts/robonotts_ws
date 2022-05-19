;; Auto-generated. Do not edit!


(when (boundp 'metrics_refbox_msgs::ItemDeliveryResult)
  (if (not (find-package "METRICS_REFBOX_MSGS"))
    (make-package "METRICS_REFBOX_MSGS"))
  (shadow 'ItemDeliveryResult (find-package "METRICS_REFBOX_MSGS")))
(unless (find-package "METRICS_REFBOX_MSGS::ITEMDELIVERYRESULT")
  (make-package "METRICS_REFBOX_MSGS::ITEMDELIVERYRESULT"))

(in-package "ROS")
;;//! \htmlinclude ItemDeliveryResult.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(intern "*FEEDBACK*" (find-package "METRICS_REFBOX_MSGS::ITEMDELIVERYRESULT"))
(shadow '*FEEDBACK* (find-package "METRICS_REFBOX_MSGS::ITEMDELIVERYRESULT"))
(defconstant metrics_refbox_msgs::ItemDeliveryResult::*FEEDBACK* 1)
(intern "*RESULT*" (find-package "METRICS_REFBOX_MSGS::ITEMDELIVERYRESULT"))
(shadow '*RESULT* (find-package "METRICS_REFBOX_MSGS::ITEMDELIVERYRESULT"))
(defconstant metrics_refbox_msgs::ItemDeliveryResult::*RESULT* 2)
(intern "*PHASE_NAV_TO_OBJECT*" (find-package "METRICS_REFBOX_MSGS::ITEMDELIVERYRESULT"))
(shadow '*PHASE_NAV_TO_OBJECT* (find-package "METRICS_REFBOX_MSGS::ITEMDELIVERYRESULT"))
(defconstant metrics_refbox_msgs::ItemDeliveryResult::*PHASE_NAV_TO_OBJECT* 1)
(intern "*PHASE_OBJECT_DETECTION*" (find-package "METRICS_REFBOX_MSGS::ITEMDELIVERYRESULT"))
(shadow '*PHASE_OBJECT_DETECTION* (find-package "METRICS_REFBOX_MSGS::ITEMDELIVERYRESULT"))
(defconstant metrics_refbox_msgs::ItemDeliveryResult::*PHASE_OBJECT_DETECTION* 2)
(intern "*PHASE_OBJECT_PICK*" (find-package "METRICS_REFBOX_MSGS::ITEMDELIVERYRESULT"))
(shadow '*PHASE_OBJECT_PICK* (find-package "METRICS_REFBOX_MSGS::ITEMDELIVERYRESULT"))
(defconstant metrics_refbox_msgs::ItemDeliveryResult::*PHASE_OBJECT_PICK* 3)
(intern "*PHASE_NAV_TO_PERSON*" (find-package "METRICS_REFBOX_MSGS::ITEMDELIVERYRESULT"))
(shadow '*PHASE_NAV_TO_PERSON* (find-package "METRICS_REFBOX_MSGS::ITEMDELIVERYRESULT"))
(defconstant metrics_refbox_msgs::ItemDeliveryResult::*PHASE_NAV_TO_PERSON* 4)
(intern "*PHASE_PERSON_DETECTION*" (find-package "METRICS_REFBOX_MSGS::ITEMDELIVERYRESULT"))
(shadow '*PHASE_PERSON_DETECTION* (find-package "METRICS_REFBOX_MSGS::ITEMDELIVERYRESULT"))
(defconstant metrics_refbox_msgs::ItemDeliveryResult::*PHASE_PERSON_DETECTION* 5)
(intern "*PHASE_HANDOVER*" (find-package "METRICS_REFBOX_MSGS::ITEMDELIVERYRESULT"))
(shadow '*PHASE_HANDOVER* (find-package "METRICS_REFBOX_MSGS::ITEMDELIVERYRESULT"))
(defconstant metrics_refbox_msgs::ItemDeliveryResult::*PHASE_HANDOVER* 6)
(intern "*HUMAN_POSE_LAYING*" (find-package "METRICS_REFBOX_MSGS::ITEMDELIVERYRESULT"))
(shadow '*HUMAN_POSE_LAYING* (find-package "METRICS_REFBOX_MSGS::ITEMDELIVERYRESULT"))
(defconstant metrics_refbox_msgs::ItemDeliveryResult::*HUMAN_POSE_LAYING* 1)
(intern "*HUMAN_POSE_STANDING*" (find-package "METRICS_REFBOX_MSGS::ITEMDELIVERYRESULT"))
(shadow '*HUMAN_POSE_STANDING* (find-package "METRICS_REFBOX_MSGS::ITEMDELIVERYRESULT"))
(defconstant metrics_refbox_msgs::ItemDeliveryResult::*HUMAN_POSE_STANDING* 2)
(intern "*HUMAN_POSE_SITTING*" (find-package "METRICS_REFBOX_MSGS::ITEMDELIVERYRESULT"))
(shadow '*HUMAN_POSE_SITTING* (find-package "METRICS_REFBOX_MSGS::ITEMDELIVERYRESULT"))
(defconstant metrics_refbox_msgs::ItemDeliveryResult::*HUMAN_POSE_SITTING* 3)
(intern "*HUMAN_REACHED_OUT*" (find-package "METRICS_REFBOX_MSGS::ITEMDELIVERYRESULT"))
(shadow '*HUMAN_REACHED_OUT* (find-package "METRICS_REFBOX_MSGS::ITEMDELIVERYRESULT"))
(defconstant metrics_refbox_msgs::ItemDeliveryResult::*HUMAN_REACHED_OUT* 1)
(intern "*HUMAN_DID_NOT_REACH_OUT*" (find-package "METRICS_REFBOX_MSGS::ITEMDELIVERYRESULT"))
(shadow '*HUMAN_DID_NOT_REACH_OUT* (find-package "METRICS_REFBOX_MSGS::ITEMDELIVERYRESULT"))
(defconstant metrics_refbox_msgs::ItemDeliveryResult::*HUMAN_DID_NOT_REACH_OUT* 2)
(intern "*GRASP_SUCCESSFUL*" (find-package "METRICS_REFBOX_MSGS::ITEMDELIVERYRESULT"))
(shadow '*GRASP_SUCCESSFUL* (find-package "METRICS_REFBOX_MSGS::ITEMDELIVERYRESULT"))
(defconstant metrics_refbox_msgs::ItemDeliveryResult::*GRASP_SUCCESSFUL* 1)
(intern "*GRASP_UNSUCCESSFUL*" (find-package "METRICS_REFBOX_MSGS::ITEMDELIVERYRESULT"))
(shadow '*GRASP_UNSUCCESSFUL* (find-package "METRICS_REFBOX_MSGS::ITEMDELIVERYRESULT"))
(defconstant metrics_refbox_msgs::ItemDeliveryResult::*GRASP_UNSUCCESSFUL* 2)
(intern "*OBJECT_DROPPED_AFTER_GRASP*" (find-package "METRICS_REFBOX_MSGS::ITEMDELIVERYRESULT"))
(shadow '*OBJECT_DROPPED_AFTER_GRASP* (find-package "METRICS_REFBOX_MSGS::ITEMDELIVERYRESULT"))
(defconstant metrics_refbox_msgs::ItemDeliveryResult::*OBJECT_DROPPED_AFTER_GRASP* 1)
(intern "*OBJECT_NOT_DROPPED_AFTER_GRASP*" (find-package "METRICS_REFBOX_MSGS::ITEMDELIVERYRESULT"))
(shadow '*OBJECT_NOT_DROPPED_AFTER_GRASP* (find-package "METRICS_REFBOX_MSGS::ITEMDELIVERYRESULT"))
(defconstant metrics_refbox_msgs::ItemDeliveryResult::*OBJECT_NOT_DROPPED_AFTER_GRASP* 2)
(intern "*RESULT_SUCCESS*" (find-package "METRICS_REFBOX_MSGS::ITEMDELIVERYRESULT"))
(shadow '*RESULT_SUCCESS* (find-package "METRICS_REFBOX_MSGS::ITEMDELIVERYRESULT"))
(defconstant metrics_refbox_msgs::ItemDeliveryResult::*RESULT_SUCCESS* 1)
(intern "*RESULT_FAILURE*" (find-package "METRICS_REFBOX_MSGS::ITEMDELIVERYRESULT"))
(shadow '*RESULT_FAILURE* (find-package "METRICS_REFBOX_MSGS::ITEMDELIVERYRESULT"))
(defconstant metrics_refbox_msgs::ItemDeliveryResult::*RESULT_FAILURE* 2)

(defun metrics_refbox_msgs::ItemDeliveryResult-to-symbol (const)
  (cond
        ((= const 1) 'metrics_refbox_msgs::ItemDeliveryResult::*FEEDBACK*)
        ((= const 2) 'metrics_refbox_msgs::ItemDeliveryResult::*RESULT*)
        ((= const 1) 'metrics_refbox_msgs::ItemDeliveryResult::*PHASE_NAV_TO_OBJECT*)
        ((= const 2) 'metrics_refbox_msgs::ItemDeliveryResult::*PHASE_OBJECT_DETECTION*)
        ((= const 3) 'metrics_refbox_msgs::ItemDeliveryResult::*PHASE_OBJECT_PICK*)
        ((= const 4) 'metrics_refbox_msgs::ItemDeliveryResult::*PHASE_NAV_TO_PERSON*)
        ((= const 5) 'metrics_refbox_msgs::ItemDeliveryResult::*PHASE_PERSON_DETECTION*)
        ((= const 6) 'metrics_refbox_msgs::ItemDeliveryResult::*PHASE_HANDOVER*)
        ((= const 1) 'metrics_refbox_msgs::ItemDeliveryResult::*HUMAN_POSE_LAYING*)
        ((= const 2) 'metrics_refbox_msgs::ItemDeliveryResult::*HUMAN_POSE_STANDING*)
        ((= const 3) 'metrics_refbox_msgs::ItemDeliveryResult::*HUMAN_POSE_SITTING*)
        ((= const 1) 'metrics_refbox_msgs::ItemDeliveryResult::*HUMAN_REACHED_OUT*)
        ((= const 2) 'metrics_refbox_msgs::ItemDeliveryResult::*HUMAN_DID_NOT_REACH_OUT*)
        ((= const 1) 'metrics_refbox_msgs::ItemDeliveryResult::*GRASP_SUCCESSFUL*)
        ((= const 2) 'metrics_refbox_msgs::ItemDeliveryResult::*GRASP_UNSUCCESSFUL*)
        ((= const 1) 'metrics_refbox_msgs::ItemDeliveryResult::*OBJECT_DROPPED_AFTER_GRASP*)
        ((= const 2) 'metrics_refbox_msgs::ItemDeliveryResult::*OBJECT_NOT_DROPPED_AFTER_GRASP*)
        ((= const 1) 'metrics_refbox_msgs::ItemDeliveryResult::*RESULT_SUCCESS*)
        ((= const 2) 'metrics_refbox_msgs::ItemDeliveryResult::*RESULT_FAILURE*)
        (t nil)))

(defclass metrics_refbox_msgs::ItemDeliveryResult
  :super ros::object
  :slots (_message_type _phase _image _box2d _human_pose _human_reach_out_result _grasp_result _post_grasp_result _result ))

(defmethod metrics_refbox_msgs::ItemDeliveryResult
  (:init
   (&key
    ((:message_type __message_type) 0)
    ((:phase __phase) 0)
    ((:image __image) (instance sensor_msgs::Image :init))
    ((:box2d __box2d) (instance metrics_refbox_msgs::BoundingBox2D :init))
    ((:human_pose __human_pose) 0)
    ((:human_reach_out_result __human_reach_out_result) 0)
    ((:grasp_result __grasp_result) 0)
    ((:post_grasp_result __post_grasp_result) 0)
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _message_type (round __message_type))
   (setq _phase (round __phase))
   (setq _image __image)
   (setq _box2d __box2d)
   (setq _human_pose (round __human_pose))
   (setq _human_reach_out_result (round __human_reach_out_result))
   (setq _grasp_result (round __grasp_result))
   (setq _post_grasp_result (round __post_grasp_result))
   (setq _result (round __result))
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
  (:human_pose
   (&optional __human_pose)
   (if __human_pose (setq _human_pose __human_pose)) _human_pose)
  (:human_reach_out_result
   (&optional __human_reach_out_result)
   (if __human_reach_out_result (setq _human_reach_out_result __human_reach_out_result)) _human_reach_out_result)
  (:grasp_result
   (&optional __grasp_result)
   (if __grasp_result (setq _grasp_result __grasp_result)) _grasp_result)
  (:post_grasp_result
   (&optional __post_grasp_result)
   (if __post_grasp_result (setq _post_grasp_result __post_grasp_result)) _post_grasp_result)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
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
    ;; uint8 _human_pose
    1
    ;; uint8 _human_reach_out_result
    1
    ;; uint8 _grasp_result
    1
    ;; uint8 _post_grasp_result
    1
    ;; uint8 _result
    1
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
     ;; uint8 _human_pose
       (write-byte _human_pose s)
     ;; uint8 _human_reach_out_result
       (write-byte _human_reach_out_result s)
     ;; uint8 _grasp_result
       (write-byte _grasp_result s)
     ;; uint8 _post_grasp_result
       (write-byte _post_grasp_result s)
     ;; uint8 _result
       (write-byte _result s)
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
   ;; uint8 _human_pose
     (setq _human_pose (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _human_reach_out_result
     (setq _human_reach_out_result (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _grasp_result
     (setq _grasp_result (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _post_grasp_result
     (setq _post_grasp_result (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _result
     (setq _result (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get metrics_refbox_msgs::ItemDeliveryResult :md5sum-) "1f5b116dba66c515bfcf0a99c9bb4b7b")
(setf (get metrics_refbox_msgs::ItemDeliveryResult :datatype-) "metrics_refbox_msgs/ItemDeliveryResult")
(setf (get metrics_refbox_msgs::ItemDeliveryResult :definition-)
      "uint8 FEEDBACK=1
uint8 RESULT=2
uint8 message_type

# feedback when each phase is complete
uint8 PHASE_NAV_TO_OBJECT=1
uint8 PHASE_OBJECT_DETECTION=2
uint8 PHASE_OBJECT_PICK=3
uint8 PHASE_NAV_TO_PERSON=4
uint8 PHASE_PERSON_DETECTION=5
uint8 PHASE_HANDOVER=6

uint8 phase


# for phase_object_detection and phase_person_detection
sensor_msgs/Image image
BoundingBox2D box2d


# for phase_handover

# enums for human_pose
uint8 HUMAN_POSE_LAYING=1
uint8 HUMAN_POSE_STANDING=2
uint8 HUMAN_POSE_SITTING=3

uint8 human_pose

# enums for human_reach_out_result
uint8 HUMAN_REACHED_OUT=1
uint8 HUMAN_DID_NOT_REACH_OUT=2

uint8 human_reach_out_result

# enums for grasp result
uint8 GRASP_SUCCESSFUL=1
uint8 GRASP_UNSUCCESSFUL=2

uint8 grasp_result


# enums for post_grasp_result
uint8 OBJECT_DROPPED_AFTER_GRASP=1
uint8 OBJECT_NOT_DROPPED_AFTER_GRASP=2

uint8 post_grasp_result


## Result
uint8 RESULT_SUCCESS=1
uint8 RESULT_FAILURE=2
uint8 result

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



(provide :metrics_refbox_msgs/ItemDeliveryResult "1f5b116dba66c515bfcf0a99c9bb4b7b")


