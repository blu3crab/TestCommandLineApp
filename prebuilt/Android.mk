LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := main-prebuilt
LOCAL_SRC_FILES := libmain.out.so
include $(PREBUILT_SHARED_LIBRARY)  