LOCAL_PATH := $(call my-dir)

LOCAL_SHORT_COMMANDS := true

include $(LOCAL_PATH)/Makefile.srcs

include $(CLEAR_VARS)
LOCAL_MODULE := freetype6
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../../include
LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES += $(SRCS)
LOCAL_LDLIBS := -ldl -llog
LOCAL_CFLAGS += -O3 -DDLL -DANDROID_NDK -DFT2_BUILD_LIBRARY=1
LOCAL_CPPFLAGS += -O3

include $(BUILD_SHARED_LIBRARY)