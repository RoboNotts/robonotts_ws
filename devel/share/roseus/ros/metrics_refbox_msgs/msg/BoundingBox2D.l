;; Auto-generated. Do not edit!


(when (boundp 'metrics_refbox_msgs::BoundingBox2D)
  (if (not (find-package "METRICS_REFBOX_MSGS"))
    (make-package "METRICS_REFBOX_MSGS"))
  (shadow 'BoundingBox2D (find-package "METRICS_REFBOX_MSGS")))
(unless (find-package "METRICS_REFBOX_MSGS::BOUNDINGBOX2D")
  (make-package "METRICS_REFBOX_MSGS::BOUNDINGBOX2D"))

(in-package "ROS")
;;//! \htmlinclude BoundingBox2D.msg.html


(defclass metrics_refbox_msgs::BoundingBox2D
  :super ros::object
  :slots (_min_x _min_y _max_x _max_y ))

(defmethod metrics_refbox_msgs::BoundingBox2D
  (:init
   (&key
    ((:min_x __min_x) 0)
    ((:min_y __min_y) 0)
    ((:max_x __max_x) 0)
    ((:max_y __max_y) 0)
    )
   (send-super :init)
   (setq _min_x (round __min_x))
   (setq _min_y (round __min_y))
   (setq _max_x (round __max_x))
   (setq _max_y (round __max_y))
   self)
  (:min_x
   (&optional __min_x)
   (if __min_x (setq _min_x __min_x)) _min_x)
  (:min_y
   (&optional __min_y)
   (if __min_y (setq _min_y __min_y)) _min_y)
  (:max_x
   (&optional __max_x)
   (if __max_x (setq _max_x __max_x)) _max_x)
  (:max_y
   (&optional __max_y)
   (if __max_y (setq _max_y __max_y)) _max_y)
  (:serialization-length
   ()
   (+
    ;; uint32 _min_x
    4
    ;; uint32 _min_y
    4
    ;; uint32 _max_x
    4
    ;; uint32 _max_y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _min_x
       (write-long _min_x s)
     ;; uint32 _min_y
       (write-long _min_y s)
     ;; uint32 _max_x
       (write-long _max_x s)
     ;; uint32 _max_y
       (write-long _max_y s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _min_x
     (setq _min_x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _min_y
     (setq _min_y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _max_x
     (setq _max_x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _max_y
     (setq _max_y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get metrics_refbox_msgs::BoundingBox2D :md5sum-) "32cc77a889ecfebef439f3192db73e63")
(setf (get metrics_refbox_msgs::BoundingBox2D :datatype-) "metrics_refbox_msgs/BoundingBox2D")
(setf (get metrics_refbox_msgs::BoundingBox2D :definition-)
      "uint32 min_x
uint32 min_y
uint32 max_x
uint32 max_y

")



(provide :metrics_refbox_msgs/BoundingBox2D "32cc77a889ecfebef439f3192db73e63")


