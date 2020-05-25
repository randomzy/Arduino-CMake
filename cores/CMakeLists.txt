set(ARDUINO_CORE_SRC)
file(GLOB ARDUINO_CORE_SRC "${CMAKE_CURRENT_SOURCE_DIR}/arduino/*.cpp" "${CMAKE_CURRENT_SOURCE_DIR}/arduino/*.c")

add_library(ArduinoCore STATIC
    ${ARDUINO_CORE_SRC}
)

target_include_directories(ArduinoCore PUBLIC 
    arduino
)