# Copyright (C) 2011 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

TARGET_NO_BOOTLOADER := true

TARGET_BOARD_PLATFORM := msm7x30
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Vendor
BOARD_VENDOR := htc

TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

TARGET_SPECIFIC_HEADER_PATH := device/htc/msm7x30-common/include

DEVICE_PACKAGE_OVERLAYS += device/htc/msm7x30-common/overlay

BOARD_USES_ADRENO_200 := true

COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60 -DQCOM_NO_SECURE_PLAYBACK -DICS_CAMERA_BLOB -DNO_UPDATE_PREVIEW -DSCREEN_RELEASE
USE_OPENGL_RENDERER := true
TARGET_USES_C2D_COMPOSITION := false
TARGET_USES_SF_BYPASS := false
TARGET_HAVE_BYPASS := false
TARGET_USES_OVERLAY := true
#TARGET_QCOM_HDMI_OUT := true
TARGET_GRALLOC_USES_ASHMEM := false
TARGET_USES_GENLOCK := true
BOARD_NEEDS_MEMORYHEAPPMEM := true
BOARD_EGL_NEEDS_LEGACY_FB := true
CAMERA_USES_SURFACEFLINGER_CLIENT_STUB := true

TARGET_FORCE_CPU_UPLOAD := true

BOARD_PREBUILT_LIBAUDIO := false
BOARD_USES_QCOM_AUDIO_VOIPMUTE := true
BOARD_USES_QCOM_AUDIO_RESETALL := true

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF := device/htc/msm7x30-common/bluetooth/vnd_msm7x30.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/htc/msm7x30-common/bluetooth/include

BOARD_VENDOR_QCOM_AMSS_VERSION := 1200

BOARD_EGL_CFG := device/htc/msm7x30-common/egl.cfg

TARGET_QCOM_DISPLAY_VARIANT := legacy
TARGET_QCOM_AUDIO_VARIANT := legacy
TARGET_NO_HW_VSYNC := true
TARGET_USES_C2D_COMPOSITION := true
BOARD_USES_QCOM_LIBS := true
#BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true

COMMON_GLOBAL_CFLAGS += -DBINDER_COMPAT
BOARD_NEEDS_MEMORYHEAPPMEM := true

#BOARD_CAMERA_USE_GETBUFFERINFO := true

#BOARD_OVERLAY_FORMAT_YCbCr_420_SP := true

# RIL Hack
COMMON_GLOBAL_CFLAGS += -DRIL_VERSION_2_SUPPORT
BOARD_USES_LEGACY_RIL := true

BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 1240

BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
ARCH_ARM_HAVE_NEON := true

# Camera
BOARD_USES_HTC_CAMERA := true
BOARD_HAVE_HTC_FFC := true
BOARD_USE_REVERSE_FFC := true
