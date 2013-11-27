# CMake
cmake_minimum_required (VERSION 2.8.9)

# Project
set (PROJECT qml_widgets)
project (${PROJECT})

# Ask CMake generate moc-files automatically
set(CMAKE_AUTOMOC ON)

# Find required qt5 modules
find_package(Qt5Core REQUIRED)
find_package(Qt5Quick REQUIRED)

# Set Qt resources
set(RESOURCES
    qml_widgets.qrc
)

# Qt5 add resources
qt5_add_resources(QRC_SOURCES ${RESOURCES})

# Library target
add_library(${PROJECT_NAME} SHARED ${RESOURCES})

# Use Qt5 modules
qt5_use_modules(${PROJECT} Core Quick)
