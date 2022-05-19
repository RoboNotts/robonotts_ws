;; Auto-generated. Do not edit!


(when (boundp 'metrics_refbox_msgs::HandoverObjectResult)
  (if (not (find-package "METRICS_REFBOX_MSGS"))
    (make-package "METRICS_REFBOX_MSGS"))
  (shadow 'HandoverObjectResult (find-package "METRICS_REFBOX_MSGS")))
(unless (find-package "METRICS_REFBOX_MSGS::HANDOVEROBJECTRESULT")
  (make-package "METRICS_REFBOX_MSGS::HANDOVEROBJECTRESULT"))

(in-package "ROS")
;;//! \htmlinclude HandoverObjectResult.msg.html


(intern "*FEEDBACK*" (find-package "METRICS_REFBOX_MSGS::HANDOVEROBJECTRESULT"))
(shadow '*FEEDBACK* (find-package "METRICS_REFBOX_MSGS::HANDOVEROBJECTRESULT"))
(defconstant metrics_refbox_msgs::HandoverObjectResult::*FEEDBACK* 1)
(intern "*RESULT*" (find-package "METRICS_REFBOX_MSGS::HANDOVEROBJECTRESULT"))
(shadow '*RESULT* (find-package "METRICS_REFBOX_MSGS::HANDOVEROBJECTRESULT"))
(defconstant metrics_refbox_msgs::HandoverObjectResult::*RESULT* 2)
(intern "*HUMAN_POSE_LAYING*" (find-package "METRICS_REFBOX_MSGS::HANDOVEROBJECTRESULT"))
(shadow '*HUMAN_POSE_LAYING* (find-package "METRICS_REFBOX_MSGS::HANDOVEROBJECTRESULT"))
(defconstant metrics_refbox_msgs::HandoverObjectResult::*HUMAN_POSE_LAYING* 1)
(intern "*HUMAN_POSE_STANDING*" (find-package "METRICS_REFBOX_MSGS::HANDOVEROBJECTRESULT"))
(shadow '*HUMAN_POSE_STANDING* (find-package "METRICS_REFBOX_MSGS::HANDOVEROBJECTRESULT"))
(defconstant metrics_refbox_msgs::HandoverObjectResult::*HUMAN_POSE_STANDING* 2)
(intern "*HUMAN_POSE_SITTING*" (find-package "METRICS_REFBOX_MSGS::HANDOVEROBJECTRESULT"))
(shadow '*HUMAN_POSE_SITTING* (find-package "METRICS_REFBOX_MSGS::HANDOVEROBJECTRESULT"))
(defconstant metrics_refbox_msgs::HandoverObjectResult::*HUMAN_POSE_SITTING* 3)
(intern "*HUMAN_REACHED_OUT*" (find-package "METRICS_REFBOX_MSGS::HANDOVEROBJECTRESULT"))
(shadow '*HUMAN_REACHED_OUT* (find-package "METRICS_REFBOX_MSGS::HANDOVEROBJECTRESULT"))
(defconstant metrics_refbox_msgs::HandoverObjectResult::*HUMAN_REACHED_OUT* 1)
(intern "*HUMAN_DID_NOT_REACH_OUT*" (find-package "METRICS_REFBOX_MSGS::HANDOVEROBJECTRESULT"))
(shadow '*HUMAN_DID_NOT_REACH_OUT* (find-package "METRICS_REFBOX_MSGS::HANDOVEROBJECTRESULT"))
(defconstant metrics_refbox_msgs::HandoverObjectResult::*HUMAN_DID_NOT_REACH_OUT* 2)
(intern "*GRASP_SUCCESSFUL*" (find-package "METRICS_REFBOX_MSGS::HANDOVEROBJECTRESULT"))
(shadow '*GRASP_SUCCESSFUL* (find-package "METRICS_REFBOX_MSGS::HANDOVEROBJECTRESULT"))
(defconstant metrics_refbox_msgs::HandoverObjectResult::*GRASP_SUCCESSFUL* 1)
(intern "*GRASP_UNSUCCESSFUL*" (find-package "METRICS_REFBOX_MSGS::HANDOVEROBJECTRESULT"))
(shadow '*GRASP_UNSUCCESSFUL* (find-package "METRICS_REFBOX_MSGS::HANDOVEROBJECTRESULT"))
(defconstant metrics_refbox_msgs::HandoverObjectResult::*GRASP_UNSUCCESSFUL* 2)
(intern "*OBJECT_DROPPED_AFTER_GRASP*" (find-package "METRICS_REFBOX_MSGS::HANDOVEROBJECTRESULT"))
(shadow '*OBJECT_DROPPED_AFTER_GRASP* (find-package "METRICS_REFBOX_MSGS::HANDOVEROBJECTRESULT"))
(defconstant metrics_refbox_msgs::HandoverObjectResult::*OBJECT_DROPPED_AFTER_GRASP* 1)
(intern "*OBJECT_NOT_DROPPED_AFTER_GRASP*" (find-package "METRICS_REFBOX_MSGS::HANDOVEROBJECTRESULT"))
(shadow '*OBJECT_NOT_DROPPED_AFTER_GRASP* (find-package "METRICS_REFBOX_MSGS::HANDOVEROBJECTRESULT"))
(defconstant metrics_refbox_msgs::HandoverObjectResult::*OBJECT_NOT_DROPPED_AFTER_GRASP* 2)

(defun metrics_refbox_msgs::HandoverObjectResult-to-symbol (const)
  (cond
        ((= const 1) 'metrics_refbox_msgs::HandoverObjectResult::*FEEDBACK*)
        ((= const 2) 'metrics_refbox_msgs::HandoverObjectResult::*RESULT*)
        ((= const 1) 'metrics_refbox_msgs::HandoverObjectResult::*HUMAN_POSE_LAYING*)
        ((= const 2) 'metrics_refbox_msgs::HandoverObjectResult::*HUMAN_POSE_STANDING*)
        ((= const 3) 'metrics_refbox_msgs::HandoverObjectResult::*HUMAN_POSE_SITTING*)
        ((= const 1) 'metrics_refbox_msgs::HandoverObjectResult::*HUMAN_REACHED_OUT*)
        ((= const 2) 'metrics_refbox_msgs::HandoverObjectResult::*HUMAN_DID_NOT_REACH_OUT*)
        ((= const 1) 'metrics_refbox_msgs::HandoverObjectResult::*GRASP_SUCCESSFUL*)
        ((= const 2) 'metrics_refbox_msgs::HandoverObjectResult::*GRASP_UNSUCCESSFUL*)
        ((= const 1) 'metrics_refbox_msgs::HandoverObjectResult::*OBJECT_DROPPED_AFTER_GRASP*)
        ((= const 2) 'metrics_refbox_msgs::HandoverObjectResult::*OBJECT_NOT_DROPPED_AFTER_GRASP*)
        (t nil)))

(defclass metrics_refbox_msgs::HandoverObjectResult
  :super ros::object
  :slots (_message_type _human_pose _human_reach_out_result _grasp_result _post_grasp_result ))

(defmethod metrics_refbox_msgs::HandoverObjectResult
  (:init
   (&key
    ((:message_type __message_type) 0)
    ((:human_pose __human_pose) 0)
    ((:human_reach_out_result __human_reach_out_result) 0)
    ((:grasp_result __grasp_result) 0)
    ((:post_grasp_result __post_grasp_result) 0)
    )
   (send-super :init)
   (setq _message_type (round __message_type))
   (setq _human_pose (round __human_pose))
   (setq _human_reach_out_result (round __human_reach_out_result))
   (setq _grasp_result (round __grasp_result))
   (setq _post_grasp_result (round __post_grasp_result))
   self)
  (:message_type
   (&optional __message_type)
   (if __message_type (setq _message_type __message_type)) _message_type)
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
  (:serialization-length
   ()
   (+
    ;; uint8 _message_type
    1
    ;; uint8 _human_pose
    1
    ;; uint8 _human_reach_out_result
    1
    ;; uint8 _grasp_result
    1
    ;; uint8 _post_grasp_result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _message_type
       (write-byte _message_type s)
     ;; uint8 _human_pose
       (write-byte _human_pose s)
     ;; uint8 _human_reach_out_result
       (write-byte _human_reach_out_result s)
     ;; uint8 _grasp_result
       (write-byte _grasp_result s)
     ;; uint8 _post_grasp_result
       (write-byte _post_grasp_result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _message_type
     (setq _message_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _human_pose
     (setq _human_pose (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _human_reach_out_result
     (setq _human_reach_out_result (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _grasp_result
     (setq _grasp_result (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _post_grasp_result
     (setq _post_grasp_result (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get metrics_refbox_msgs::HandoverObjectResult :md5sum-) "3d548e8447af165afb4ca080bc119755")
(setf (get metrics_refbox_msgs::HandoverObjectResult :datatype-) "metrics_refbox_msgs/HandoverObjectResult")
(setf (get metrics_refbox_msgs::HandoverObjectResult :definition-)
      "uint8 FEEDBACK=1
uint8 RESULT=2
uint8 message_type

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

")



(provide :metrics_refbox_msgs/HandoverObjectResult "3d548e8447af165afb4ca080bc119755")


