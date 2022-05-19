;; Auto-generated. Do not edit!


(when (boundp 'metrics_refbox_msgs::HumanRecognitionResult)
  (if (not (find-package "METRICS_REFBOX_MSGS"))
    (make-package "METRICS_REFBOX_MSGS"))
  (shadow 'HumanRecognitionResult (find-package "METRICS_REFBOX_MSGS")))
(unless (find-package "METRICS_REFBOX_MSGS::HUMANRECOGNITIONRESULT")
  (make-package "METRICS_REFBOX_MSGS::HUMANRECOGNITIONRESULT"))

(in-package "ROS")
;;//! \htmlinclude HumanRecognitionResult.msg.html


(intern "*FEEDBACK*" (find-package "METRICS_REFBOX_MSGS::HUMANRECOGNITIONRESULT"))
(shadow '*FEEDBACK* (find-package "METRICS_REFBOX_MSGS::HUMANRECOGNITIONRESULT"))
(defconstant metrics_refbox_msgs::HumanRecognitionResult::*FEEDBACK* 1)
(intern "*RESULT*" (find-package "METRICS_REFBOX_MSGS::HUMANRECOGNITIONRESULT"))
(shadow '*RESULT* (find-package "METRICS_REFBOX_MSGS::HUMANRECOGNITIONRESULT"))
(defconstant metrics_refbox_msgs::HumanRecognitionResult::*RESULT* 2)

(defun metrics_refbox_msgs::HumanRecognitionResult-to-symbol (const)
  (cond
        ((= const 1) 'metrics_refbox_msgs::HumanRecognitionResult::*FEEDBACK*)
        ((= const 2) 'metrics_refbox_msgs::HumanRecognitionResult::*RESULT*)
        (t nil)))

(defclass metrics_refbox_msgs::HumanRecognitionResult
  :super ros::object
  :slots (_message_type _identities ))

(defmethod metrics_refbox_msgs::HumanRecognitionResult
  (:init
   (&key
    ((:message_type __message_type) 0)
    ((:identities __identities) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _message_type (round __message_type))
   (setq _identities __identities)
   self)
  (:message_type
   (&optional __message_type)
   (if __message_type (setq _message_type __message_type)) _message_type)
  (:identities
   (&optional __identities)
   (if __identities (setq _identities __identities)) _identities)
  (:serialization-length
   ()
   (+
    ;; uint8 _message_type
    1
    ;; string[] _identities
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _identities)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _message_type
       (write-byte _message_type s)
     ;; string[] _identities
     (write-long (length _identities) s)
     (dolist (elem _identities)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _message_type
     (setq _message_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string[] _identities
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _identities (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _identities i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get metrics_refbox_msgs::HumanRecognitionResult :md5sum-) "d7de96a6e70a0c5d5e50d4f423425618")
(setf (get metrics_refbox_msgs::HumanRecognitionResult :datatype-) "metrics_refbox_msgs/HumanRecognitionResult")
(setf (get metrics_refbox_msgs::HumanRecognitionResult :definition-)
      "uint8 FEEDBACK=1
uint8 RESULT=2
uint8 message_type

# list of recognized persons from most probable to least probable
string[] identities

")



(provide :metrics_refbox_msgs/HumanRecognitionResult "d7de96a6e70a0c5d5e50d4f423425618")


