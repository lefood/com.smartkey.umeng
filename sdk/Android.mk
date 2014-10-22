LOCAL_PATH := $(call my-dir)


#
# Build prebuilt shared library
#  - libs/armeabi/libbspatch.so
#
include $(CLEAR_VARS)
LOCAL_MODULE        := libbspatch
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAG    := optional
LOCAL_MODULE_CLASS  := SHARED_LIBRARIES
LOCAL_SRC_FILES     := libs/armeabi/libbspatch.so
include $(BUILD_PREBUILT)


#
# Build prebuilt java libraries
#  - libs/umeng-analytics-v5.2.4.jar
#  - libs/umeng-fb-v4.3.2.jar
#  - libs/umeng-message-v1.3.0.jar
#  - libs/umeng-update-v2.4.2.jar
#
include $(CLEAR_VARS)
LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := com.smartkey.umeng.sdk_umeng-analytics:libs/umeng-analytics-v5.2.4.jar
LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES += com.smartkey.umeng.sdk_umeng-fb:libs/umeng-fb-v4.3.2.jar
LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES += com.smartkey.umeng.sdk_umeng-message:libs/umeng-message-v1.3.0.jar
LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES += com.smartkey.umeng.sdk_umeng-update:libs/umeng-update-v2.4.2.jar
include $(BUILD_MULTI_PREBUILT)


#
# Build com.smartkey.umeng.sdk as a java library
#
include $(CLEAR_VARS)
LOCAL_JAR_EXCLUDE_FILES     := none
LOCAL_MODULE                := com.smartkey.umeng.sdk
LOCAL_RESOURCE_DIR          := $(LOCAL_PATH)/res
LOCAL_SRC_FILES             := $(call all-java-files-under,src)
include $(BUILD_STATIC_JAVA_LIBRARY)
