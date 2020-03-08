#设置CMake的最小版本
cmake_minimum_required(VERSION 3.4.1)
#set(CMAKE_C_FLAGS
#        -ffast-math
#        -O3
#        -funroll-loops
#        -Wall
#        -Wextra
#        -Werror)
#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
set( lib_src_DIR ../jni_jpeg )

set( lib_build_DIR ${lib_src_DIR}/outputs)
file(MAKE_DIRECTORY ${lib_build_DIR})

include_directories(src)
file(GLOB SOURCE
        src/inputstream_wrapper.cpp
        src/jpegstream.cpp
        src/jerr_hook.cpp
        src/jpeg_hook.cpp
        src/jpeg_writer.cpp
        src/jpeg_reader.cpp
        src/outputstream_wrapper.cpp
        src/stream_wrapper.cpp
        )
add_library(jni_jpegstream SHARED ${SOURCE})
add_subdirectory(${lib_src_DIR} ${lib_build_DIR})
add_library(turbojpep STATIC IMPORTED)
set_target_properties(turbojpeg PROPERTIES IMPORTED_LOCATION ${lib_build_DIR}/${CMAKE_ANDROID_ARCH_ABI}/libturbojpeg.a)
add_library(jpep STATIC IMPORTED)
set_target_properties(turbojpeg PROPERTIES IMPORTED_LOCATION ${lib_build_DIR}/${CMAKE_ANDROID_ARCH_ABI}/libjpeg.a)

include_directories( ${lib_src_DIR})
target_link_libraries(jni_jpegstream turbojpeg  jpeg log)