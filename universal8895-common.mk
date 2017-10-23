#
# Copyright (C) 2017 The LineageOS Project
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
#

LOCAL_PATH := device/samsung/universal8895-common

# Common Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Ramdisk
PRODUCT_PACKAGES += \
	fstab.samsungexynos8895 \
	init.samsung.rc \
	init.samsungexynos8895.rc \
	ueventd.samsungexynos8895.rc

# Graphics
PRODUCT_AAPT_CONFIG := xlarge
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
# A list of dpis to select prebuilt apk, in precedence order.
PRODUCT_AAPT_PREBUILT_DPI := xxxhdpi xxhdpi xhdpi hdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2960
TARGET_SCREEN_WIDTH := 1440

# Power
PRODUCT_PACKAGES += \
	power.universal8895

# Lights
PRODUCT_PACKAGES += \
	lights.universal8895

# Charger
# Offmode charger
# Use cm images if available, aosp ones otherwise
PRODUCT_PACKAGES += \
	charger_res_images \
	cm_charger_res_images

# Mobicore
PRODUCT_PACKAGES += \
	keystore.exynos5

# Packages
PRODUCT_PACKAGES += \
	libsamsung_symbols \
	SamsungServiceMode \
	Torch \
	SamsungDoze

# DTB Tool
PRODUCT_PACKAGES += \
	dtbhtoolExynos

# Audio
PRODUCT_COPY_FILES += \
	$(DEVICE_PATH)/configs/audio/audio_policy.conf:system/etc/audio_policy.conf \
	$(DEVICE_PATH)/configs/audio/audio_effects.conf:system/etc/audio_effects.conf \
	$(DEVICE_PATH)/configs/audio/mixer_paths.xml:system/etc/mixer_paths.xml

PRODUCT_PACKAGES += \
	audio.a2dp.default \
	audio.usb.default \
	audio.r_submix.default \
	audio.primary.universal8895 \
	libtinycompress

# Bluetooth
PRODUCT_PACKAGES += \
	init.bluetooth.rc

# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
	frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.camera.full.xml:system/etc/permissions/android.hardware.camera.full.xml \
	frameworks/native/data/etc/android.hardware.camera.raw.xml:system/etc/permissions/android.hardware.camera.raw.xml \
	frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
	frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
	frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/native/data/etc/android.hardware.sensor.heartrate.xml:system/etc/permissions/android.hardware.sensor.heartrate.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
	frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
	frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
	frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
	frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml \
	frameworks/native/data/etc/android.hardware.vulkan.level-0.xml:system/etc/permissions/android.hardware.vulkan.level.xml \
	frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:system/etc/permissions/android.hardware.vulkan.version.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	frameworks/native/data/etc/android.software.freeform_window_management.xml:system/etc/permissions/android.software.freeform_window_management.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
	frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Camera
PRODUCT_PACKAGES += \
	camera.exynos5 \
	Snap

# Fingerprint
PRODUCT_PACKAGES += \
	fingerprintd \
	fingerprint.exynos5

# GPS
PRODUCT_COPY_FILES += \
	$(DEVICE_PATH)/configs/gps/gps.conf:system/etc/gps.conf \
	$(DEVICE_PATH)/configs/gps/gps.xml:system/etc/gps.xml

PRODUCT_PACKAGES += \
	init.gps.rc

# Graphics
PRODUCT_PACKAGES += \
	libfimg \
	libion \
	gralloc.exynos5

# Input
PRODUCT_COPY_FILES += \
	$(DEVICE_PATH)/configs/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
	$(DEVICE_PATH)/configs/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl \
	$(DEVICE_PATH)/configs/idc/ft5x06_ts.idc:system/usr/idc/ft5x06_ts.idc \
	$(DEVICE_PATH)/configs/idc/Synaptics_HID_TouchPad.idc:system/usr/idc/Synaptics_HID_TouchPad.idc \
	$(DEVICE_PATH)/configs/idc/Synaptics_RMI4_TouchPad_Sensor.idc:system/usr/idc/Synaptics_RMI4_TouchPad_Sensor.idc \
	$(DEVICE_PATH)/configs/idc/sec_touchscreen.idc:system/usr/idc/sec_touchscreen.idc

# IPv6
PRODUCT_PACKAGES += \
	ebtables \
	ethertypes \
	libebtc

# Media
PRODUCT_COPY_FILES += \
	$(DEVICE_PATH)/configs/media/media_codecs.xml:system/etc/media_codecs.xml \
	$(DEVICE_PATH)/configs/media/media_profiles.xml:system/etc/media_profiles.xml


# NFC
PRODUCT_COPY_FILES += \
	$(DEVICE_PATH)/configs/nfc/libnfc-sec-hal.conf:system/etc/libnfc-sec-hal.conf \
	$(DEVICE_PATH)/configs/nfc/libnfc-sec.conf:system/etc/libnfc-brcm.conf \
	$(DEVICE_PATH)/configs/nfc/nfcee_access.xml:system/etc/nfcee_access.xml

PRODUCT_PACKAGES += \
	com.android.nfc_extras \
	NfcNci \
	Tag

# Radio
PRODUCT_PACKAGES += \
	init.baseband.rc \
	init.baseband.sh \
	init.rilchip.rc \
	init.rilcommon.rc

PRODUCT_PACKAGES += \
	libxml2 \
	libprotobuf-cpp-full \
	libsecril-client

# USB
PRODUCT_PACKAGES += \
	init.samsungexynos8895.usb.rc

PRODUCT_PACKAGES += \
	com.android.future.usb.accessory

# WIFI
PRODUCT_COPY_FILES += \
	$(DEVICE_PATH)/configs/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
	$(DEVICE_PATH)/configs/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

PRODUCT_PACKAGES += \
	init.wifi.rc

PRODUCT_PACKAGES += \
	macloader \
	wifiloader \
	hostapd \
	libwpa_client \
	wpa_supplicant \
	wpa_supplicant.conf

# System properties
include $(LOCAL_PATH)/system_prop.mk

# call Samsung LSI board support package
$(call inherit-product, hardware/samsung_slsi-cm/exynos5/exynos5.mk)
$(call inherit-product, hardware/samsung_slsi-cm/exynos8895/exynos8895.mk)

# call the proprietary setup
$(call inherit-product, vendor/samsung/universal8895-common/universal8895-common-vendor.mk)
