
PWD=$(shell pwd)
AAP_JUCE_DIR=$(PWD)/external/aap-juce

APP_NAME=Eq

APP_BUILD_DIR=$(PWD)
APP_SRC_DIR=$(PWD)/external/Eq
JUCE_DIR=$(APP_SRC_DIR)/JUCE

# For metadata updates, relative to build-desktop
APP_SHARED_CODE_LIBS="$(APP_NAME)_artefacts/lib$(APP_NAME)_SharedCode.a lib$(APP_NAME)Data.a"

METADATA_GENERATOR_CMAKE_EXTRA_FLAGS="CMAKE_CXX_FLAGS=-Werror=maybe-uninitialized"

PATCH_FILE=$(shell pwd)/aap-juce-support.patch
PATCH_DEPTH=1

include $(AAP_JUCE_DIR)/Makefile.cmake-common
