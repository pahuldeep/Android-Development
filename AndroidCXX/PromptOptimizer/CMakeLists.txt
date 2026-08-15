cmake_minimum_required(VERSION 3.16)
project(PromptOptimizer VERSION 1.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

# enable resources and other compoents
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

# Find Qt6 required packages
find_package(Qt6 REQUIRED COMPONENTS Quick Gui)

qt_standard_project_setup()

add_subdirectory(frontend)
add_subdirectory(backend)

qt_add_executable(prompt-app
    main.cpp
)

target_link_libraries(prompt-app PRIVATE
    Qt6::Core
    Qt6::Quick
    # Qt6::Qml
)

target_sources(prompt-app PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/frontend/resources.qrc)

# Set QML import path for the executable
set_target_properties(prompt-app PROPERTIES QT_QML_IMPORT_PATH "${CMAKE_BINARY_DIR}/frontend")