cmake_minimum_required(VERSION 3.0.2)
project(ltrp_config_ros)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  message_generation
)

## Generate messages in the 'msg' folder
add_message_files(
  FILES
  ButtonState.msg
  Center.msg
  ComputingTime.msg
  Contour.msg
  Detection.msg
  Error.msg
  Feedback.msg
  Illumination.msg
  ImageProcessingComputingTime.msg
  LineDetectionComputingTime.msg
  Obstacle.msg
  Overseer.msg
  NodeReady.msg
  NodeRespawnResult.msg
  RangeData.msg
  Rotation.msg
  RTK.msg
  SubROIDetection.msg
  SystemActivate.msg
  SystemResetResult.msg
  SystemStatus.msg
  Target.msg
)

## Generate added messages and services with any dependencies listed here
generate_messages(
  DEPENDENCIES
  std_msgs  # Or other packages containing msgs
)

catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES ltrp_config_ros
 CATKIN_DEPENDS roscpp rospy
#  DEPENDS system_lib
)


include_directories(
# include
  ${catkin_INCLUDE_DIRS}
)

catkin_install_python(PROGRAMS
  scripts/utils.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)