LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

include $(CLEAR_VARS)
LOCAL_MODULE      	 := fstab.samsungexynos8895
LOCAL_MODULE_TAGS 	 := optional eng
LOCAL_MODULE_CLASS	 := BOOT
LOCAL_SRC_FILES   	 := fstab.samsungexynos8895
LOCAL_MODULE_PATH 	 := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE      	 := init.recovery.usb.rc
LOCAL_MODULE_TAGS 	 := optional eng
LOCAL_MODULE_CLASS	 := BOOT
LOCAL_SRC_FILES   	 := init.recovery.usb.rc
LOCAL_MODULE_PATH 	 := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE      	 := recovery.fstab
LOCAL_MODULE_TAGS 	 := optional eng
LOCAL_MODULE_CLASS	 := BOOT
LOCAL_SRC_FILES   	 := recovery.fstab
LOCAL_MODULE_PATH 	 := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.baseband.rc
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= BOOT
LOCAL_SRC_FILES 	:= init.baseband.rc
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.baseband.sh
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= BOOT
LOCAL_SRC_FILES 	:= init.baseband.sh
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.bluetooth.rc
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= BOOT
LOCAL_SRC_FILES 	:= init.bluetooth.rc
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.gps.rc
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= BOOT
LOCAL_SRC_FILES		:= init.gps.rc
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.rilchip.rc
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= BOOT
LOCAL_SRC_FILES		:= init.rilchip.rc
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.rilcommon.rc
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= BOOT
LOCAL_SRC_FILES		:= init.rilcommon.rc
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.samsung.rc
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= BOOT
LOCAL_SRC_FILES		:= init.samsung.rc
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.samsungexynos8895.rc
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= BOOT
LOCAL_SRC_FILES		:= init.samsungexynos8895.rc
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.samsungexynos8895.usb.rc
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= BOOT
LOCAL_SRC_FILES		:= init.samsungexynos8895.usb.rc
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.wifi.rc
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= BOOT
LOCAL_SRC_FILES		:= init.wifi.rc
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= ueventd.samsungexynos8895.rc
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= BOOT
LOCAL_SRC_FILES		:= ueventd.samsungexynos8895.rc
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)
