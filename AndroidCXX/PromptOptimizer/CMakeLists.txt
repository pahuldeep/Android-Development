cmake_minimum_required(VERSION 3.16)
project(PromptOptimizer VERSION 1.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

# enable resources and other compoents
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

# Find Qt6 required packages
find_package(Qt6 REQUIRED COMPONENTS Quick Gui Qml)

qt_standard_project_setup()

add_subdirectory(frontend)
add_subdirectory(backend)
