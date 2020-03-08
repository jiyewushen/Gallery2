#设置CMake的最小版本
cmake_minimum_required(VERSION 3.4.1)
set(CMAKE_C_FLAGS
        -DEGL_EGLEXT_PROTOTYPES)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src)
file(GLOB SOURCE
        src/jni_egl_fence.cpp
        )
add_library(jni_eglfence SHARED ${SOURCE})
target_link_libraries(jni_eglfence EGL log)