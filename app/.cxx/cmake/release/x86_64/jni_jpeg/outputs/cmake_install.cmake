# Install script for directory: D:/aosp/Gallery2/app/src/main/cpp/jni_jpeg

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/opt/Project")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE SHARED_LIBRARY FILES "D:/aosp/Gallery2/app/src/main/cpp/jniLibs/x86_64/libturbojpeg.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libturbojpeg.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libturbojpeg.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "D:/android_sdk_beta/ndk/20.0.5594570/toolchains/llvm/prebuilt/windows-x86_64/bin/x86_64-linux-android-strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libturbojpeg.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "D:/aosp/Gallery2/app/.cxx/cmake/release/x86_64/jni_jpeg/outputs/tjbench")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/tjbench" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/tjbench")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "D:/android_sdk_beta/ndk/20.0.5594570/toolchains/llvm/prebuilt/windows-x86_64/bin/x86_64-linux-android-strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/tjbench")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE STATIC_LIBRARY FILES "D:/aosp/Gallery2/app/.cxx/cmake/release/x86_64/jni_jpeg/outputs/libturbojpeg.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES "D:/aosp/Gallery2/app/src/main/cpp/jni_jpeg/turbojpeg.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE STATIC_LIBRARY FILES "D:/aosp/Gallery2/app/.cxx/cmake/release/x86_64/jni_jpeg/outputs/libjpeg.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "D:/aosp/Gallery2/app/.cxx/cmake/release/x86_64/jni_jpeg/outputs/rdjpgcom")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/rdjpgcom" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/rdjpgcom")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "D:/android_sdk_beta/ndk/20.0.5594570/toolchains/llvm/prebuilt/windows-x86_64/bin/x86_64-linux-android-strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/rdjpgcom")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "D:/aosp/Gallery2/app/.cxx/cmake/release/x86_64/jni_jpeg/outputs/wrjpgcom")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/wrjpgcom" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/wrjpgcom")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "D:/android_sdk_beta/ndk/20.0.5594570/toolchains/llvm/prebuilt/windows-x86_64/bin/x86_64-linux-android-strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/wrjpgcom")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/doc" TYPE FILE FILES
    "D:/aosp/Gallery2/app/src/main/cpp/jni_jpeg/README.ijg"
    "D:/aosp/Gallery2/app/src/main/cpp/jni_jpeg/README.md"
    "D:/aosp/Gallery2/app/src/main/cpp/jni_jpeg/example.txt"
    "D:/aosp/Gallery2/app/src/main/cpp/jni_jpeg/tjexample.c"
    "D:/aosp/Gallery2/app/src/main/cpp/jni_jpeg/libjpeg.txt"
    "D:/aosp/Gallery2/app/src/main/cpp/jni_jpeg/structure.txt"
    "D:/aosp/Gallery2/app/src/main/cpp/jni_jpeg/usage.txt"
    "D:/aosp/Gallery2/app/src/main/cpp/jni_jpeg/wizard.txt"
    "D:/aosp/Gallery2/app/src/main/cpp/jni_jpeg/LICENSE.md"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/man/man1" TYPE FILE FILES
    "D:/aosp/Gallery2/app/src/main/cpp/jni_jpeg/cjpeg.1"
    "D:/aosp/Gallery2/app/src/main/cpp/jni_jpeg/djpeg.1"
    "D:/aosp/Gallery2/app/src/main/cpp/jni_jpeg/jpegtran.1"
    "D:/aosp/Gallery2/app/src/main/cpp/jni_jpeg/rdjpgcom.1"
    "D:/aosp/Gallery2/app/src/main/cpp/jni_jpeg/wrjpgcom.1"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/pkgconfig" TYPE FILE FILES
    "D:/aosp/Gallery2/app/.cxx/cmake/release/x86_64/jni_jpeg/outputs/pkgscripts/libjpeg.pc"
    "D:/aosp/Gallery2/app/.cxx/cmake/release/x86_64/jni_jpeg/outputs/pkgscripts/libturbojpeg.pc"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "D:/aosp/Gallery2/app/.cxx/cmake/release/x86_64/jni_jpeg/outputs/jconfig.h"
    "D:/aosp/Gallery2/app/src/main/cpp/jni_jpeg/jerror.h"
    "D:/aosp/Gallery2/app/src/main/cpp/jni_jpeg/jmorecfg.h"
    "D:/aosp/Gallery2/app/src/main/cpp/jni_jpeg/jpeglib.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("D:/aosp/Gallery2/app/.cxx/cmake/release/x86_64/jni_jpeg/outputs/simd/cmake_install.cmake")
  include("D:/aosp/Gallery2/app/.cxx/cmake/release/x86_64/jni_jpeg/outputs/sharedlib/cmake_install.cmake")
  include("D:/aosp/Gallery2/app/.cxx/cmake/release/x86_64/jni_jpeg/outputs/md5/cmake_install.cmake")

endif()

