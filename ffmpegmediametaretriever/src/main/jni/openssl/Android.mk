LOCAL_PATH := $(call my-dir)

LOCAL_LIB_FILE_PATH_PREFIX := $(LOCAL_PATH)/../../../../../commonlib/src/main/jni/openssl

include $(CLEAR_VARS)
LOCAL_MODULE := libssl
LOCAL_SRC_FILES := $(LOCAL_LIB_FILE_PATH_PREFIX)/$(TARGET_ARCH_ABI)/$(LOCAL_MODULE).so
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_LIB_FILE_PATH_PREFIX)/include
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libcrypto
LOCAL_SRC_FILES := $(LOCAL_LIB_FILE_PATH_PREFIX)/$(TARGET_ARCH_ABI)/$(LOCAL_MODULE).so
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_LIB_FILE_PATH_PREFIX)/include
include $(PREBUILT_SHARED_LIBRARY)
