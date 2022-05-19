;; Auto-generated. Do not edit!


(when (boundp 'metrics_refbox_msgs::ActivityRecognitionResult)
  (if (not (find-package "METRICS_REFBOX_MSGS"))
    (make-package "METRICS_REFBOX_MSGS"))
  (shadow 'ActivityRecognitionResult (find-package "METRICS_REFBOX_MSGS")))
(unless (find-package "METRICS_REFBOX_MSGS::ACTIVITYRECOGNITIONRESULT")
  (make-package "METRICS_REFBOX_MSGS::ACTIVITYRECOGNITIONRESULT"))

(in-package "ROS")
;;//! \htmlinclude ActivityRecognitionResult.msg.html


(intern "*FEEDBACK*" (find-package "METRICS_REFBOX_MSGS::ACTIVITYRECOGNITIONRESULT"))
(shadow '*FEEDBACK* (find-package "METRICS_REFBOX_MSGS::ACTIVITYRECOGNITIONRESULT"))
(defconstant metrics_refbox_msgs::ActivityRecognitionResult::*FEEDBACK* 1)
(intern "*RESULT*" (find-package "METRICS_REFBOX_MSGS::ACTIVITYRECOGNITIONRESULT"))
(shadow '*RESULT* (find-package "METRICS_REFBOX_MSGS::ACTIVITYRECOGNITIONRESULT"))
(defconstant metrics_refbox_msgs::ActivityRecognitionResult::*RESULT* 2)

(defun metrics_refbox_msgs::ActivityRecognitionResult-to-symbol (const)
  (cond
        ((= const 1) 'metrics_refbox_msgs::ActivityRecognitionResult::*FEEDBACK*)
        ((= const 2) 'metrics_refbox_msgs::ActivityRecognitionResult::*RESULT*)
        (t nil)))

(defclass metrics_refbox_msgs::ActivityRecognitionResult
  :super ros::object
  :slots (_message_type _activities ))

(defmethod metrics_refbox_msgs::ActivityRecognitionResult
  (:init
   (&key
    ((:message_type __message_type) 0)
    ((:activities __activities) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _message_type (round __message_type))
   (setq _activities __activities)
   self)
  (:message_type
   (&optional __message_type)
   (if __message_type (setq _message_type __message_type)) _message_type)
  (:activities
   (&optional __activities)
   (if __activities (setq _activities __activities)) _activities)
  (:serialization-length
   ()
   (+
    ;; uint8 _message_type
    1
    ;; string[] _activities
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _activities)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _message_type
       (write-byte _message_type s)
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

(setf (get metrics_refbox_msgs::ActivityRecognitionResult :md5sum-) "be6bf821856377e457fb3a0315d48f81")
(setf (get metrics_refbox_msgs::ActivityRecognitionResult :datatype-) "metrics_refbox_msgs/ActivityRecognitionResult")
(setf (get metrics_refbox_msgs::ActivityRecognitionResult :definition-)
      "uint8 FEEDBACK=1
uint8 RESULT=2
uint8 message_type
# list of activities ordered from most probable to least probable.
# Up to a maximum of 5 activities will be considered for evaluation
string[] activities

")



(provide :metrics_refbox_msgs/ActivityRecognitionResult "be6bf821856377e457fb3a0315d48f81")


