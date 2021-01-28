
APP_NAME=Eq

APP_SRC_DIR=$(shell pwd)/external/Eq

AAP_JUCE_DIR=$(shell pwd)/external/aap-juce
JUCE_DIR=$(APP_SRC_DIR)/JUCE

# For metadata updates, relative to build-desktop
APP_SHARED_CODE_LIBS="$(APP_NAME)_artefacts/lib$(APP_NAME)_SharedCode.a lib$(APP_NAME)Data.a"

PATCH_FILE=$(shell pwd)/aap-juce-support.patch
PATCH_DEPTH=1

include $(AAP_JUCE_DIR)/Makefile.cmake-common
