;; Auto-generated. Do not edit!


(when (boundp 'metrics_refbox_msgs::Command)
  (if (not (find-package "METRICS_REFBOX_MSGS"))
    (make-package "METRICS_REFBOX_MSGS"))
  (shadow 'Command (find-package "METRICS_REFBOX_MSGS")))
(unless (find-package "METRICS_REFBOX_MSGS::COMMAND")
  (make-package "METRICS_REFBOX_MSGS::COMMAND"))

(in-package "ROS")
;;//! \htmlinclude Command.msg.html


(intern "*OBJECT_DETECTION*" (find-package "METRICS_REFBOX_MSGS::COMMAND"))
(shadow '*OBJECT_DETECTION* (find-package "METRICS_REFBOX_MSGS::COMMAND"))
(defconstant metrics_refbox_msgs::Command::*OBJECT_DETECTION* 1)
(intern "*PERSON_DETECTION*" (find-package "METRICS_REFBOX_MSGS::COMMAND"))
(shadow '*PERSON_DETECTION* (find-package "METRICS_REFBOX_MSGS::COMMAND"))
(defconstant metrics_refbox_msgs::Command::*PERSON_DETECTION* 2)
(intern "*ACTIVITY_RECOGNITION*" (find-package "METRICS_REFBOX_MSGS::COMMAND"))
(shadow '*ACTIVITY_RECOGNITION* (find-package "METRICS_REFBOX_MSGS::COMMAND"))
(defconstant metrics_refbox_msgs::Command::*ACTIVITY_RECOGNITION* 3)
(intern "*GESTURE_RECOGNITION*" (find-package "METRICS_REFBOX_MSGS::COMMAND"))
(shadow '*GESTURE_RECOGNITION* (find-package "METRICS_REFBOX_MSGS::COMMAND"))
(defconstant metrics_refbox_msgs::Command::*GESTURE_RECOGNITION* 4)
(intern "*TASK_ORIENTED_GRASPING*" (find-package "METRICS_REFBOX_MSGS::COMMAND"))
(shadow '*TASK_ORIENTED_GRASPING* (find-package "METRICS_REFBOX_MSGS::COMMAND"))
(defconstant metrics_refbox_msgs::Command::*TASK_ORIENTED_GRASPING* 5)
(intern "*HANDOVER_OBJECT*" (find-package "METRICS_REFBOX_MSGS::COMMAND"))
(shadow '*HANDOVER_OBJECT* (find-package "METRICS_REFBOX_MSGS::COMMAND"))
(defconstant metrics_refbox_msgs::Command::*HANDOVER_OBJECT* 6)
(intern "*RECEIVE_OBJECT*" (find-package "METRICS_REFBOX_MSGS::COMMAND"))
(shadow '*RECEIVE_OBJECT* (find-package "METRICS_REFBOX_MSGS::COMMAND"))
(defconstant metrics_refbox_msgs::Command::*RECEIVE_OBJECT* 7)
(intern "*ASSESS_ACTIVITY_STATE*" (find-package "METRICS_REFBOX_MSGS::COMMAND"))
(shadow '*ASSESS_ACTIVITY_STATE* (find-package "METRICS_REFBOX_MSGS::COMMAND"))
(defconstant metrics_refbox_msgs::Command::*ASSESS_ACTIVITY_STATE* 8)
(intern "*ITEM_DELIVERY*" (find-package "METRICS_REFBOX_MSGS::COMMAND"))
(shadow '*ITEM_DELIVERY* (find-package "METRICS_REFBOX_MSGS::COMMAND"))
(defconstant metrics_refbox_msgs::Command::*ITEM_DELIVERY* 9)
(intern "*START*" (find-package "METRICS_REFBOX_MSGS::COMMAND"))
(shadow '*START* (find-package "METRICS_REFBOX_MSGS::COMMAND"))
(defconstant metrics_refbox_msgs::Command::*START* 1)
(intern "*STOP*" (find-package "METRICS_REFBOX_MSGS::COMMAND"))
(shadow '*STOP* (find-package "METRICS_REFBOX_MSGS::COMMAND"))
(defconstant metrics_refbox_msgs::Command::*STOP* 2)

(defun metrics_refbox_msgs::Command-to-symbol (const)
  (cond
        ((= const 1) 'metrics_refbox_msgs::Command::*OBJECT_DETECTION*)
        ((= const 2) 'metrics_refbox_msgs::Command::*PERSON_DETECTION*)
        ((= const 3) 'metrics_refbox_msgs::Command::*ACTIVITY_RECOGNITION*)
        ((= const 4) 'metrics_refbox_msgs::Command::*GESTURE_RECOGNITION*)
        ((= const 5) 'metrics_refbox_msgs::Command::*TASK_ORIENTED_GRASPING*)
        ((= const 6) 'metrics_refbox_msgs::Command::*HANDOVER_OBJECT*)
        ((= const 7) 'metrics_refbox_msgs::Command::*RECEIVE_OBJECT*)
        ((= const 8) 'metrics_refbox_msgs::Command::*ASSESS_ACTIVITY_STATE*)
        ((= const 9) 'metrics_refbox_msgs::Command::*ITEM_DELIVERY*)
        ((= const 1) 'metrics_refbox_msgs::Command::*START*)
        ((= const 2) 'metrics_refbox_msgs::Command::*STOP*)
        (t nil)))

(defclass metrics_refbox_msgs::Command
  :super ros::object
  :slots (_task _command _task_config _uid ))

(defmethod metrics_refbox_msgs::Command
  (:init
   (&key
    ((:task __task) 0)
    ((:command __command) 0)
    ((:task_config __task_config) "")
    ((:uid __uid) "")
    )
   (send-super :init)
   (setq _task (round __task))
   (setq _command (round __command))
   (setq _task_config (string __task_config))
   (setq _uid (string __uid))
   self)
  (:task
   (&optional __task)
   (if __task (setq _task __task)) _task)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:task_config
   (&optional __task_config)
   (if __task_config (setq _task_config __task_config)) _task_config)
  (:uid
   (&optional __uid)
   (if __uid (setq _uid __uid)) _uid)
  (:serialization-length
   ()
   (+
    ;; uint8 _task
    1
    ;; uint8 _command
    1
    ;; string _task_config
    4 (length _task_config)
    ;; string _uid
    4 (length _uid)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _task
       (write-byte _task s)
     ;; uint8 _command
       (write-byte _command s)
     ;; string _task_config
       (write-long (length _task_config) s) (princ _task_config s)
     ;; string _uid
       (write-long (length _uid) s) (princ _uid s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _task
     (setq _task (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _command
     (setq _command (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _task_config
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _task_config (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _uid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _uid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get metrics_refbox_msgs::Command :md5sum-) "2f0442d04a8cefd06266d146bdcdb55f")
(setf (get metrics_refbox_msgs::Command :datatype-) "metrics_refbox_msgs/Command")
(setf (get metrics_refbox_msgs::Command :definition-)
      "# task ENUMS
uint8 OBJECT_DETECTION=1
uint8 PERSON_DETECTION=2
uint8 ACTIVITY_RECOGNITION=3
uint8 GESTURE_RECOGNITION=4
uint8 TASK_ORIENTED_GRASPING=5
uint8 HANDOVER_OBJECT=6
uint8 RECEIVE_OBJECT=7
uint8 ASSESS_ACTIVITY_STATE=8
uint8 ITEM_DELIVERY=9


# command ENUMS
uint8 START=1
uint8 STOP=2


uint8 task
uint8 command

# json string with additional info for specific benchmarks
string task_config

# unique identifier for this message
string uid

")



(provide :metrics_refbox_msgs/Command "2f0442d04a8cefd06266d146bdcdb55f")


