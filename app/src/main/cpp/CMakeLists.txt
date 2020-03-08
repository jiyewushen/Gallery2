#设置CMake的最小版本
cmake_minimum_required(VERSION 3.4.1)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/jniLibs/${ANDROID_ABI})
add_subdirectory(${PROJECT_SOURCE_DIR}/jni)
add_subdirectory(${PROJECT_SOURCE_DIR}/jni_egl)
add_subdirectory(${PROJECT_SOURCE_DIR}/jni_jpegstream)
