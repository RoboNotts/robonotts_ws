;; Auto-generated. Do not edit!


(when (boundp 'metrics_refbox_msgs::BoundingBox3D)
  (if (not (find-package "METRICS_REFBOX_MSGS"))
    (make-package "METRICS_REFBOX_MSGS"))
  (shadow 'BoundingBox3D (find-package "METRICS_REFBOX_MSGS")))
(unless (find-package "METRICS_REFBOX_MSGS::BOUNDINGBOX3D")
  (make-package "METRICS_REFBOX_MSGS::BOUNDINGBOX3D"))

(in-package "ROS")
;;//! \htmlinclude BoundingBox3D.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass metrics_refbox_msgs::BoundingBox3D
  :super ros::object
  :slots (_center _dimensions _vertices ))

(defmethod metrics_refbox_msgs::BoundingBox3D
  (:init
   (&key
    ((:center __center) (instance geometry_msgs::Point :init))
    ((:dimensions __dimensions) (instance geometry_msgs::Vector3 :init))
    ((:vertices __vertices) ())
    )
   (send-super :init)
   (setq _center __center)
   (setq _dimensions __dimensions)
   (setq _vertices __vertices)
   self)
  (:center
   (&rest __center)
   (if (keywordp (car __center))
       (send* _center __center)
     (progn
       (if __center (setq _center (car __center)))
       _center)))
  (:dimensions
   (&rest __dimensions)
   (if (keywordp (car __dimensions))
       (send* _dimensions __dimensions)
     (progn
       (if __dimensions (setq _dimensions (car __dimensions)))
       _dimensions)))
  (:vertices
   (&rest __vertices)
   (if (keywordp (car __vertices))
       (send* _vertices __vertices)
     (progn
       (if __vertices (setq _vertices (car __vertices)))
       _vertices)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _center
    (send _center :serialization-length)
    ;; geometry_msgs/Vector3 _dimensions
    (send _dimensions :serialization-length)
    ;; geometry_msgs/Point[] _vertices
    (apply #'+ (send-all _vertices :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _center
       (send _center :serialize s)
     ;; geometry_msgs/Vector3 _dimensions
       (send _dimensions :serialize s)
     ;; geometry_msgs/Point[] _vertices
     (write-long (length _vertices) s)
     (dolist (elem _vertices)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _center
     (send _center :deserialize buf ptr-) (incf ptr- (send _center :serialization-length))
   ;; geometry_msgs/Vector3 _dimensions
     (send _dimensions :deserialize buf ptr-) (incf ptr- (send _dimensions :serialization-length))
   ;; geometry_msgs/Point[] _vertices
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vertices (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _vertices)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get metrics_refbox_msgs::BoundingBox3D :md5sum-) "b9b98e3939e5a8f5b51b326bdc17eed8")
(setf (get metrics_refbox_msgs::BoundingBox3D :datatype-) "metrics_refbox_msgs/BoundingBox3D")
(setf (get metrics_refbox_msgs::BoundingBox3D :definition-)
      "# Geometrical center
geometry_msgs/Point center
# Dimensions
geometry_msgs/Vector3 dimensions
# List of vertices; first bottom, then top, in clockwise direction
geometry_msgs/Point[] vertices

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :metrics_refbox_msgs/BoundingBox3D "b9b98e3939e5a8f5b51b326bdc17eed8")


