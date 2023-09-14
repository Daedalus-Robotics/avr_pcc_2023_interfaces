cmake_minimum_required(VERSION 3.8)
project(avr_pcc_2023_interfaces)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(avr_2023_common_interfaces REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
    "srv/SetLedStrip.srv"
        "srv/SetServo.srv"
    DEPENDENCIES avr_2023_common_interfaces
)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  set(ament_cmake_copyright_FOUND TRUE)
  set(ament_cmake_cpplint_FOUND TRUE)
  ament_lint_auto_find_test_dependencies()
endif()

ament_package()
