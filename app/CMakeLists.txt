cmake_minimum_required(VERSION 3.6)

PROJECT(AAP_JUCE_WITTE_EQ
LANGUAGES C CXX
)

add_library(juce_jni SHARED
    dummy.cpp
    )

get_filename_component(PLUGIN_BUILD_BIN_DIR "${CMAKE_CURRENT_LIST_DIR}/../plugin/.cxx/cmake/${JUCEAAP_BUILD_TYPE}/${CMAKE_ANDROID_ARCH_ABI}/Eq/Eq_artefacts/${CMAKE_BUILD_TYPE}/Standalone/" ABSOLUTE)

target_link_directories(juce_jni PRIVATE
	${PLUGIN_BUILD_BIN_DIR}
	)

target_link_libraries(juce_jni PRIVATE Eq_Standalone)
