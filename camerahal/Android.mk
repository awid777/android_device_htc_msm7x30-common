ifeq ($(BOARD_USES_HTC_CAMERA),true)

<<<<<<< HEAD
=======
$(shell mkdir -p $(OUT)/obj/SHARED_LIBRARIES/libcamera_intermediates/)
$(shell touch $(OUT)/obj/SHARED_LIBRARIES/libcamera_intermediates/export_includes)
$(shell mkdir -p $(OUT)/obj/SHARED_LIBRARIES/camera.msm7x30_intermediates/)
$(shell touch $(OUT)/obj/SHARED_LIBRARIES/camera.msm7x30_intermediates/export_includes)

>>>>>>> 6a08c89... msm7x30: Camera HAL for HTC Sense devices (1/2)
LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_MODULE := camera.$(TARGET_BOARD_PLATFORM)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := cameraHAL.cpp
<<<<<<< HEAD
LOCAL_C_INCLUDES := $(TOP)/frameworks/base/include
=======
LOCAL_C_INCLUDES := $(TOP)/frameworks/native/include
>>>>>>> 6a08c89... msm7x30: Camera HAL for HTC Sense devices (1/2)

LOCAL_SHARED_LIBRARIES := liblog libutils libcutils
LOCAL_SHARED_LIBRARIES += libui libhardware libcamera_client
LOCAL_SHARED_LIBRARIES += libcamera
LOCAL_PRELINK_MODULE := false

ifeq ($(BOARD_HAVE_HTC_FFC), true)
    LOCAL_CFLAGS += -DHTC_FFC
endif
ifeq ($(BOARD_USE_REVERSE_FFC), true)
    LOCAL_CFLAGS += -DREVERSE_FFC
endif

include $(BUILD_SHARED_LIBRARY)

endif
