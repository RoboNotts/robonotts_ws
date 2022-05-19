;; Auto-generated. Do not edit!


(when (boundp 'metrics_refbox_msgs::ClutteredPickResult)
  (if (not (find-package "METRICS_REFBOX_MSGS"))
    (make-package "METRICS_REFBOX_MSGS"))
  (shadow 'ClutteredPickResult (find-package "METRICS_REFBOX_MSGS")))
(unless (find-package "METRICS_REFBOX_MSGS::CLUTTEREDPICKRESULT")
  (make-package "METRICS_REFBOX_MSGS::CLUTTEREDPICKRESULT"))

(in-package "ROS")
;;//! \htmlinclude ClutteredPickResult.msg.html


(intern "*FEEDBACK*" (find-package "METRICS_REFBOX_MSGS::CLUTTEREDPICKRESULT"))
(shadow '*FEEDBACK* (find-package "METRICS_REFBOX_MSGS::CLUTTEREDPICKRESULT"))
(defconstant metrics_refbox_msgs::ClutteredPickResult::*FEEDBACK* 1)
(intern "*RESULT*" (find-package "METRICS_REFBOX_MSGS::CLUTTEREDPICKRESULT"))
(shadow '*RESULT* (find-package "METRICS_REFBOX_MSGS::CLUTTEREDPICKRESULT"))
(defconstant metrics_refbox_msgs::ClutteredPickResult::*RESULT* 2)
(intern "*PICKED*" (find-package "METRICS_REFBOX_MSGS::CLUTTEREDPICKRESULT"))
(shadow '*PICKED* (find-package "METRICS_REFBOX_MSGS::CLUTTEREDPICKRESULT"))
(defconstant metrics_refbox_msgs::ClutteredPickResult::*PICKED* 1)
(intern "*PLACED*" (find-package "METRICS_REFBOX_MSGS::CLUTTEREDPICKRESULT"))
(shadow '*PLACED* (find-package "METRICS_REFBOX_MSGS::CLUTTEREDPICKRESULT"))
(defconstant metrics_refbox_msgs::ClutteredPickResult::*PLACED* 2)

(defun metrics_refbox_msgs::ClutteredPickResult-to-symbol (const)
  (cond
        ((= const 1) 'metrics_refbox_msgs::ClutteredPickResult::*FEEDBACK*)
        ((= const 2) 'metrics_refbox_msgs::ClutteredPickResult::*RESULT*)
        ((= const 1) 'metrics_refbox_msgs::ClutteredPickResult::*PICKED*)
        ((= const 2) 'metrics_refbox_msgs::ClutteredPickResult::*PLACED*)
        (t nil)))

(defclass metrics_refbox_msgs::ClutteredPickResult
  :super ros::object
  :slots (_message_type _object_name _action_completed _num_objects_picked ))

(defmethod metrics_refbox_msgs::ClutteredPickResult
  (:init
   (&key
    ((:message_type __message_type) 0)
    ((:object_name __object_name) "")
    ((:action_completed __action_completed) 0)
    ((:num_objects_picked __num_objects_picked) 0)
    )
   (send-super :init)
   (setq _message_type (round __message_type))
   (setq _object_name (string __object_name))
   (setq _action_completed (round __action_completed))
   (setq _num_objects_picked (round __num_objects_picked))
   self)
  (:message_type
   (&optional __message_type)
   (if __message_type (setq _message_type __message_type)) _message_type)
  (:object_name
   (&optional __object_name)
   (if __object_name (setq _object_name __object_name)) _object_name)
  (:action_completed
   (&optional __action_completed)
   (if __action_completed (setq _action_completed __action_completed)) _action_completed)
  (:num_objects_picked
   (&optional __num_objects_picked)
   (if __num_objects_picked (setq _num_objects_picked __num_objects_picked)) _num_objects_picked)
  (:serialization-length
   ()
   (+
    ;; uint8 _message_type
    1
    ;; string _object_name
    4 (length _object_name)
    ;; uint8 _action_completed
    1
    ;; uint8 _num_objects_picked
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _message_type
       (write-byte _message_type s)
     ;; string _object_name
       (write-long (length _object_name) s) (princ _object_name s)
     ;; uint8 _action_completed
       (write-byte _action_completed s)
     ;; uint8 _num_objects_picked
       (write-byte _num_objects_picked s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _message_type
     (setq _message_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _object_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _action_completed
     (setq _action_completed (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _num_objects_picked
     (setq _num_objects_picked (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get metrics_refbox_msgs::ClutteredPickResult :md5sum-) "87f9e733679ff877ef0bd36192d0de48")
(setf (get metrics_refbox_msgs::ClutteredPickResult :datatype-) "metrics_refbox_msgs/ClutteredPickResult")
(setf (get metrics_refbox_msgs::ClutteredPickResult :definition-)
      "uint8 FEEDBACK=1
uint8 RESULT=2
uint8 message_type

# feedback
uint8 PICKED=1
uint8 PLACED=2

string object_name
uint8 action_completed


# result
uint8 num_objects_picked


")



(provide :metrics_refbox_msgs/ClutteredPickResult "87f9e733679ff877ef0bd36192d0de48")


