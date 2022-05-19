# Install script for directory: /home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/metrics_refbox_msgs/msg" TYPE FILE FILES
    "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/Command.msg"
    "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/Confirm.msg"
    "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ObjectDetectionResult.msg"
    "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/PersonDetectionResult.msg"
    "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/HumanRecognitionResult.msg"
    "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ActivityRecognitionResult.msg"
    "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/GestureRecognitionResult.msg"
    "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ClutteredPickResult.msg"
    "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/HandoverObjectResult.msg"
    "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ReceiveObjectResult.msg"
    "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/AssessActivityStateResult.msg"
    "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/ItemDeliveryResult.msg"
    "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox2D.msg"
    "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/msg/BoundingBox3D.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/metrics_refbox_msgs/cmake" TYPE FILE FILES "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/build/metrics_refbox_msgs/catkin_generated/installspace/metrics_refbox_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/devel/include/metrics_refbox_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/devel/share/roseus/ros/metrics_refbox_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/devel/share/common-lisp/ros/metrics_refbox_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/devel/share/gennodejs/ros/metrics_refbox_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/devel/lib/python3/dist-packages/metrics_refbox_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/devel/lib/python3/dist-packages/metrics_refbox_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/build/metrics_refbox_msgs/catkin_generated/installspace/metrics_refbox_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/metrics_refbox_msgs/cmake" TYPE FILE FILES "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/build/metrics_refbox_msgs/catkin_generated/installspace/metrics_refbox_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/metrics_refbox_msgs/cmake" TYPE FILE FILES
    "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/build/metrics_refbox_msgs/catkin_generated/installspace/metrics_refbox_msgsConfig.cmake"
    "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/build/metrics_refbox_msgs/catkin_generated/installspace/metrics_refbox_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/metrics_refbox_msgs" TYPE FILE FILES "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/src/metrics_refbox_msgs/package.xml")
endif()

