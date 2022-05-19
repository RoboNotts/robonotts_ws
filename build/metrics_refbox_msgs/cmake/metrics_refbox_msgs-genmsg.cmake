# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "metrics_refbox_msgs: 14 messages, 0 services")

set(MSG_I_FLAGS "-Imetrics_refbox_msgs:/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(metrics_refbox_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/Command.msg" NAME_WE)
add_custom_target(_metrics_refbox_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "metrics_refbox_msgs" "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/Command.msg" ""
)

get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/Confirm.msg" NAME_WE)
add_custom_target(_metrics_refbox_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "metrics_refbox_msgs" "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/Confirm.msg" ""
)

get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ObjectDetectionResult.msg" NAME_WE)
add_custom_target(_metrics_refbox_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "metrics_refbox_msgs" "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ObjectDetectionResult.msg" "sensor_msgs/PointField:metrics_refbox_msgs/BoundingBox3D:sensor_msgs/PointCloud2:std_msgs/Header:sensor_msgs/Image:geometry_msgs/Point:metrics_refbox_msgs/BoundingBox2D:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/PersonDetectionResult.msg" NAME_WE)
add_custom_target(_metrics_refbox_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "metrics_refbox_msgs" "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/PersonDetectionResult.msg" "metrics_refbox_msgs/BoundingBox2D:sensor_msgs/Image:std_msgs/Header"
)

get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/HumanRecognitionResult.msg" NAME_WE)
add_custom_target(_metrics_refbox_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "metrics_refbox_msgs" "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/HumanRecognitionResult.msg" ""
)

get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ActivityRecognitionResult.msg" NAME_WE)
add_custom_target(_metrics_refbox_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "metrics_refbox_msgs" "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ActivityRecognitionResult.msg" ""
)

get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/GestureRecognitionResult.msg" NAME_WE)
add_custom_target(_metrics_refbox_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "metrics_refbox_msgs" "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/GestureRecognitionResult.msg" ""
)

get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ClutteredPickResult.msg" NAME_WE)
add_custom_target(_metrics_refbox_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "metrics_refbox_msgs" "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ClutteredPickResult.msg" ""
)

get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/HandoverObjectResult.msg" NAME_WE)
add_custom_target(_metrics_refbox_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "metrics_refbox_msgs" "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/HandoverObjectResult.msg" ""
)

get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ReceiveObjectResult.msg" NAME_WE)
add_custom_target(_metrics_refbox_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "metrics_refbox_msgs" "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ReceiveObjectResult.msg" ""
)

get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/AssessActivityStateResult.msg" NAME_WE)
add_custom_target(_metrics_refbox_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "metrics_refbox_msgs" "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/AssessActivityStateResult.msg" "metrics_refbox_msgs/BoundingBox2D:sensor_msgs/Image:std_msgs/Header"
)

get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ItemDeliveryResult.msg" NAME_WE)
add_custom_target(_metrics_refbox_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "metrics_refbox_msgs" "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ItemDeliveryResult.msg" "metrics_refbox_msgs/BoundingBox2D:sensor_msgs/Image:std_msgs/Header"
)

get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox2D.msg" NAME_WE)
add_custom_target(_metrics_refbox_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "metrics_refbox_msgs" "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox2D.msg" ""
)

get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox3D.msg" NAME_WE)
add_custom_target(_metrics_refbox_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "metrics_refbox_msgs" "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox3D.msg" "geometry_msgs/Vector3:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_cpp(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/Confirm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_cpp(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ObjectDetectionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox3D.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_cpp(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/PersonDetectionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox2D.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_cpp(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/HumanRecognitionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_cpp(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ActivityRecognitionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_cpp(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/GestureRecognitionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_cpp(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ClutteredPickResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_cpp(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/HandoverObjectResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_cpp(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ReceiveObjectResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_cpp(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/AssessActivityStateResult.msg"
  "${MSG_I_FLAGS}"
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox2D.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_cpp(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ItemDeliveryResult.msg"
  "${MSG_I_FLAGS}"
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox2D.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_cpp(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_cpp(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/metrics_refbox_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(metrics_refbox_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/metrics_refbox_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(metrics_refbox_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(metrics_refbox_msgs_generate_messages metrics_refbox_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/Command.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_cpp _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/Confirm.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_cpp _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ObjectDetectionResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_cpp _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/PersonDetectionResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_cpp _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/HumanRecognitionResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_cpp _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ActivityRecognitionResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_cpp _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/GestureRecognitionResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_cpp _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ClutteredPickResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_cpp _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/HandoverObjectResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_cpp _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ReceiveObjectResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_cpp _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/AssessActivityStateResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_cpp _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ItemDeliveryResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_cpp _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox2D.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_cpp _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox3D.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_cpp _metrics_refbox_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(metrics_refbox_msgs_gencpp)
add_dependencies(metrics_refbox_msgs_gencpp metrics_refbox_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS metrics_refbox_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_eus(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/Confirm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_eus(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ObjectDetectionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox3D.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_eus(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/PersonDetectionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox2D.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_eus(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/HumanRecognitionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_eus(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ActivityRecognitionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_eus(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/GestureRecognitionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_eus(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ClutteredPickResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_eus(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/HandoverObjectResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_eus(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ReceiveObjectResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_eus(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/AssessActivityStateResult.msg"
  "${MSG_I_FLAGS}"
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox2D.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_eus(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ItemDeliveryResult.msg"
  "${MSG_I_FLAGS}"
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox2D.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_eus(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_eus(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/metrics_refbox_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(metrics_refbox_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/metrics_refbox_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(metrics_refbox_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(metrics_refbox_msgs_generate_messages metrics_refbox_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/Command.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_eus _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/Confirm.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_eus _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ObjectDetectionResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_eus _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/PersonDetectionResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_eus _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/HumanRecognitionResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_eus _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ActivityRecognitionResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_eus _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/GestureRecognitionResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_eus _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ClutteredPickResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_eus _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/HandoverObjectResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_eus _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ReceiveObjectResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_eus _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/AssessActivityStateResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_eus _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ItemDeliveryResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_eus _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox2D.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_eus _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox3D.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_eus _metrics_refbox_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(metrics_refbox_msgs_geneus)
add_dependencies(metrics_refbox_msgs_geneus metrics_refbox_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS metrics_refbox_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_lisp(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/Confirm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_lisp(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ObjectDetectionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox3D.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_lisp(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/PersonDetectionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox2D.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_lisp(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/HumanRecognitionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_lisp(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ActivityRecognitionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_lisp(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/GestureRecognitionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_lisp(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ClutteredPickResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_lisp(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/HandoverObjectResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_lisp(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ReceiveObjectResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_lisp(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/AssessActivityStateResult.msg"
  "${MSG_I_FLAGS}"
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox2D.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_lisp(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ItemDeliveryResult.msg"
  "${MSG_I_FLAGS}"
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox2D.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_lisp(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_lisp(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/metrics_refbox_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(metrics_refbox_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/metrics_refbox_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(metrics_refbox_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(metrics_refbox_msgs_generate_messages metrics_refbox_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/Command.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_lisp _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/Confirm.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_lisp _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ObjectDetectionResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_lisp _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/PersonDetectionResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_lisp _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/HumanRecognitionResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_lisp _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ActivityRecognitionResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_lisp _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/GestureRecognitionResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_lisp _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ClutteredPickResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_lisp _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/HandoverObjectResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_lisp _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ReceiveObjectResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_lisp _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/AssessActivityStateResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_lisp _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ItemDeliveryResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_lisp _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox2D.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_lisp _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox3D.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_lisp _metrics_refbox_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(metrics_refbox_msgs_genlisp)
add_dependencies(metrics_refbox_msgs_genlisp metrics_refbox_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS metrics_refbox_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_nodejs(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/Confirm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_nodejs(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ObjectDetectionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox3D.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_nodejs(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/PersonDetectionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox2D.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_nodejs(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/HumanRecognitionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_nodejs(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ActivityRecognitionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_nodejs(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/GestureRecognitionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_nodejs(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ClutteredPickResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_nodejs(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/HandoverObjectResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_nodejs(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ReceiveObjectResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_nodejs(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/AssessActivityStateResult.msg"
  "${MSG_I_FLAGS}"
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox2D.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_nodejs(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ItemDeliveryResult.msg"
  "${MSG_I_FLAGS}"
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox2D.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_nodejs(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_nodejs(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/metrics_refbox_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(metrics_refbox_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/metrics_refbox_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(metrics_refbox_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(metrics_refbox_msgs_generate_messages metrics_refbox_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/Command.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_nodejs _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/Confirm.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_nodejs _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ObjectDetectionResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_nodejs _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/PersonDetectionResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_nodejs _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/HumanRecognitionResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_nodejs _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ActivityRecognitionResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_nodejs _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/GestureRecognitionResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_nodejs _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ClutteredPickResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_nodejs _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/HandoverObjectResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_nodejs _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ReceiveObjectResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_nodejs _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/AssessActivityStateResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_nodejs _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ItemDeliveryResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_nodejs _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox2D.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_nodejs _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox3D.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_nodejs _metrics_refbox_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(metrics_refbox_msgs_gennodejs)
add_dependencies(metrics_refbox_msgs_gennodejs metrics_refbox_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS metrics_refbox_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_py(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/Confirm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_py(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ObjectDetectionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox3D.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_py(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/PersonDetectionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox2D.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_py(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/HumanRecognitionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_py(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ActivityRecognitionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_py(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/GestureRecognitionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_py(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ClutteredPickResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_py(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/HandoverObjectResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_py(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ReceiveObjectResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_py(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/AssessActivityStateResult.msg"
  "${MSG_I_FLAGS}"
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox2D.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_py(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ItemDeliveryResult.msg"
  "${MSG_I_FLAGS}"
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox2D.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_py(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/metrics_refbox_msgs
)
_generate_msg_py(metrics_refbox_msgs
  "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/metrics_refbox_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(metrics_refbox_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/metrics_refbox_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(metrics_refbox_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(metrics_refbox_msgs_generate_messages metrics_refbox_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/Command.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_py _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/Confirm.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_py _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ObjectDetectionResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_py _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/PersonDetectionResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_py _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/HumanRecognitionResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_py _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ActivityRecognitionResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_py _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/GestureRecognitionResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_py _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ClutteredPickResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_py _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/HandoverObjectResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_py _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ReceiveObjectResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_py _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/AssessActivityStateResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_py _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ItemDeliveryResult.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_py _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox2D.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_py _metrics_refbox_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox3D.msg" NAME_WE)
add_dependencies(metrics_refbox_msgs_generate_messages_py _metrics_refbox_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(metrics_refbox_msgs_genpy)
add_dependencies(metrics_refbox_msgs_genpy metrics_refbox_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS metrics_refbox_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/metrics_refbox_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/metrics_refbox_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(metrics_refbox_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(metrics_refbox_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(metrics_refbox_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/metrics_refbox_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/metrics_refbox_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(metrics_refbox_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(metrics_refbox_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(metrics_refbox_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/metrics_refbox_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/metrics_refbox_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(metrics_refbox_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(metrics_refbox_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(metrics_refbox_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/metrics_refbox_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/metrics_refbox_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(metrics_refbox_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(metrics_refbox_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(metrics_refbox_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/metrics_refbox_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/metrics_refbox_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/metrics_refbox_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(metrics_refbox_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(metrics_refbox_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(metrics_refbox_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
