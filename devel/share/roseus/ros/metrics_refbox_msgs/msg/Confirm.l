;; Auto-generated. Do not edit!


(when (boundp 'metrics_refbox_msgs::Confirm)
  (if (not (find-package "METRICS_REFBOX_MSGS"))
    (make-package "METRICS_REFBOX_MSGS"))
  (shadow 'Confirm (find-package "METRICS_REFBOX_MSGS")))
(unless (find-package "METRICS_REFBOX_MSGS::CONFIRM")
  (make-package "METRICS_REFBOX_MSGS::CONFIRM"))

(in-package "ROS")
;;//! \htmlinclude Confirm.msg.html


(defclass metrics_refbox_msgs::Confirm
  :super ros::object
  :slots (_uid _data _rosbag_filename ))

(defmethod metrics_refbox_msgs::Confirm
  (:init
   (&key
    ((:uid __uid) "")
    ((:data __data) nil)
    ((:rosbag_filename __rosbag_filename) "")
    )
   (send-super :init)
   (setq _uid (string __uid))
   (setq _data __data)
   (setq _rosbag_filename (string __rosbag_filename))
   self)
  (:uid
   (&optional __uid)
   (if __uid (setq _uid __uid)) _uid)
  (:data
   (&optional (__data :null))
   (if (not (eq __data :null)) (setq _data __data)) _data)
  (:rosbag_filename
   (&optional __rosbag_filename)
   (if __rosbag_filename (setq _rosbag_filename __rosbag_filename)) _rosbag_filename)
  (:serialization-length
   ()
   (+
    ;; string _uid
    4 (length _uid)
    ;; bool _data
    1
    ;; string _rosbag_filename
    4 (length _rosbag_filename)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _uid
       (write-long (length _uid) s) (princ _uid s)
     ;; bool _data
       (if _data (write-byte -1 s) (write-byte 0 s))
     ;; string _rosbag_filename
       (write-long (length _rosbag_filename) s) (princ _rosbag_filename s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _uid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _uid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _data
     (setq _data (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _rosbag_filename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _rosbag_filename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get metrics_refbox_msgs::Confirm :md5sum-) "417835597ece8052d8963da89d333ccd")
(setf (get metrics_refbox_msgs::Confirm :datatype-) "metrics_refbox_msgs/Confirm")
(setf (get metrics_refbox_msgs::Confirm :definition-)
      "string uid
bool data
string rosbag_filename

")



(provide :metrics_refbox_msgs/Confirm "417835597ece8052d8963da89d333ccd")


