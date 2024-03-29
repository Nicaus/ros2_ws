cmake_minimum_required(VERSION 3.8)
project(introtask)

if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 14)
endif()

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(ament_cmake_python REQUIRED)
find_package(rclcpp REQUIRED)
find_package(rclpy REQUIRED)
find_package(std_msgs REQUIRED)

include_directories(include)

add_executable(talker src/cpppub_node.cpp)
ament_target_dependencies(talker rclcpp std_msgs)
ament_python_install_package(${PROJECT_NAME})

# add_custom_target(
#   run ALL
#   COMMAND ${PYTHON_EXECUTABLE} ${CMAKE_CURRENT_SOURCE_DIR}/scripts/pysub_node.py ${CMAKE_CURRENT_SOURCE_DIR}
#   BYPRODUCTS subnode.h
#   COMMENT "subcriber"
# )
# add_dependencies(listener run)

install(TARGETS
  talker
  DESTINATION lib/${PROJECT_NAME}
)

install(PROGRAMS
  scripts/pysub_node.py
  DESTINATION lib/${PROJECT_NAME}
)

ament_package()
