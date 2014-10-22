LOCAL_PATH := $(call my-dir)


include $(CLEAR_VARS)
LOCAL_MODULE        := com.smartkey.umeng.sdk.libbspatch
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAG    := optional
LOCAL_MODULE_CLASS  := SHARED_LIBRARIES
LOCAL_SRC_FILES     := $(LOCAL_PATH)/libs/armeabi/libbspatch.so
include $(PREBUILT_SHARED_LIBRARY)


include $(CLEAR_VARS)
LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := \
    umeng-analytics:libs/umeng-analytics-v5.2.4.jar \
    umeng-fb:libs/umeng-fb-v4.3.2.jar \
    umeng-message:libs/umeng-message-v1.3.0.jar \
    umeng-update:libs/umeng-update-v2.4.2.jar
include $(BUILD_MULTI_PREBUILT)


include $(CLEAR_VARS)
LOCAL_MODULE                := com.smartkey.umeng.sdk
LOCAL_RESOURCE_DIR          := $(LOCAL_PATH)/res
LOCAL_SRC_FILES             := $(call all-java-files-under,src)
include $(BUILD_STATIC_JAVA_LIBRARY)
