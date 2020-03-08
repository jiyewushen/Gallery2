#设置CMake的最小版本
cmake_minimum_required(VERSION 3.4.1)
#set(CMAKE_C_FLAGS
#        -ffast-math
#        -O3
#        -funroll-loops)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/filters)
file(GLOB SOURCE
        filters/gradient.c
        filters/saturated.c
        filters/exposure.c
        filters/edge.c
        filters/contrast.c
        filters/hue.c
        filters/shadows.c
        filters/highlight.c
        filters/hsv.c
        filters/vibrance.c
        filters/geometry.c
        filters/negative.c
        filters/redEyeMath.c
        filters/fx.c
        filters/wbalance.c
        filters/redeye.c
        filters/bwfilter.c
        filters/tinyplanet.cc
        filters/kmeans.cc)
add_library(jni_filtershow_filters SHARED ${SOURCE})
target_link_libraries(jni_filtershow_filters jnigraphics log)