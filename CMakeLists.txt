cmake_minimum_required(VERSION 3.12)

project(Arduino)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(SOURCES ${SOURCES}
    
)

set(PUBLIC_INCLUDES ${PUBLIC_INCLUDES}
    ./include
)

set(OPT "-Os")
set(WARN "-Wall")
set(TUNING "-funsigned-char -funsigned-bitfields -fpack-struct -fshort-enums")
set(MCU "-mmcu=atmega328p")
set(DEFS "-D F_CPU=16000000")

set(FLAGS "${FLAGS} ${MCU} ${DEFS} ${TUNING} ${OPT} ${WARN}")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${FLAGS}")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${FLAGS}")

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_subdirectory(cores)
add_subdirectory(libraries)

add_executable(main src/main.cpp ${SOURCES})
target_include_directories(main PUBLIC ${PUBLIC_INCLUDES})
add_dependencies(main ArduinoCore ArduinoLibraries)
target_link_libraries(main ArduinoCore ArduinoLibraries)