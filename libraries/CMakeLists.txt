set(LIBS_SRC_DIR "${CMAKE_CURRENT_SOURCE_DIR}/*/src")

file(GLOB_RECURSE LIB_SRC "${LIBS_SRC_DIR}/*.cpp" "${LIBS_SRC_DIR}/*.c")
file(GLOB LIB_INC "${LIBS_SRC_DIR}/")

add_library(ArduinoLibraries STATIC
    "${LIB_SRC}"
)

target_include_directories(ArduinoLibraries PUBLIC
    "${LIB_INC}"
)

target_link_libraries(ArduinoLibraries ArduinoCore)