execute_process(COMMAND "/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/build/rosbag_recorder/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/majonez/Documents/RoboNotts/ros-tutorial/workSpace/build/rosbag_recorder/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
