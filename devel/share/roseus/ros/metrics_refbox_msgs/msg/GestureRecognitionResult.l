;; Auto-generated. Do not edit!


(when (boundp 'metrics_refbox_msgs::GestureRecognitionResult)
  (if (not (find-package "METRICS_REFBOX_MSGS"))
    (make-package "METRICS_REFBOX_MSGS"))
  (shadow 'GestureRecognitionResult (find-package "METRICS_REFBOX_MSGS")))
(unless (find-package "METRICS_REFBOX_MSGS::GESTURERECOGNITIONRESULT")
  (make-package "METRICS_REFBOX_MSGS::GESTURERECOGNITIONRESULT"))

(in-package "ROS")
;;//! \htmlinclude GestureRecognitionResult.msg.html


(intern "*FEEDBACK*" (find-package "METRICS_REFBOX_MSGS::GESTURERECOGNITIONRESULT"))
(shadow '*FEEDBACK* (find-package "METRICS_REFBOX_MSGS::GESTURERECOGNITIONRESULT"))
(defconstant metrics_refbox_msgs::GestureRecognitionResult::*FEEDBACK* 1)
(intern "*RESULT*" (find-package "METRICS_REFBOX_MSGS::GESTURERECOGNITIONRESULT"))
(shadow '*RESULT* (find-package "METRICS_REFBOX_MSGS::GESTURERECOGNITIONRESULT"))
(defconstant metrics_refbox_msgs::GestureRecognitionResult::*RESULT* 2)

(defun metrics_refbox_msgs::GestureRecognitionResult-to-symbol (const)
  (cond
        ((= const 1) 'metrics_refbox_msgs::GestureRecognitionResult::*FEEDBACK*)
        ((= const 2) 'metrics_refbox_msgs::GestureRecognitionResult::*RESULT*)
        (t nil)))

(defclass metrics_refbox_msgs::GestureRecognitionResult
  :super ros::object
  :slots (_message_type _gestures ))

(defmethod metrics_refbox_msgs::GestureRecognitionResult
  (:init
   (&key
    ((:message_type __message_type) 0)
    ((:gestures __gestures) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _message_type (round __message_type))
   (setq _gestures __gestures)
   self)
  (:message_type
   (&optional __message_type)
   (if __message_type (setq _message_type __message_type)) _message_type)
  (:gestures
   (&optional __gestures)
   (if __gestures (setq _gestures __gestures)) _gestures)
  (:serialization-length
   ()
   (+
    ;; uint8 _message_type
    1
    ;; string[] _gestures
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _gestures)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _message_type
       (write-byte _message_type s)
     ;; string[] _gestures
     (write-long (length _gestures) s)
     (dolist (elem _gestures)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _message_type
     (setq _message_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string[] _gestures
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _gestures (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _gestures i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get metrics_refbox_msgs::GestureRecognitionResult :md5sum-) "0534e12d393a2b3abfb6b552d909c2e5")
(setf (get metrics_refbox_msgs::GestureRecognitionResult :datatype-) "metrics_refbox_msgs/GestureRecognitionResult")
(setf (get metrics_refbox_msgs::GestureRecognitionResult :definition-)
      "uint8 FEEDBACK=1
uint8 RESULT=2
uint8 message_type
# list of gestures ordered from most probable to least probable.
# Up to a maximum of 2 gestures will be considered for evaluation
string[] gestures

")



(provide :metrics_refbox_msgs/GestureRecognitionResult "0534e12d393a2b3abfb6b552d909c2e5")


