#
# Copyright (C) 2009 The Android Open Source Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# device specific props
$(call inherit-product-if-exists, vendor/htc/speedy/speedy-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml

# Input config files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc \
    $(LOCAL_PATH)/keylayout/atmel-touchscreen.kl:system/usr/keylayout/atmel-touchscreen.kl \
    $(LOCAL_PATH)/idc//speedy-keypad.idc:system/usr/idc/speedy-keypad.idc \
    $(LOCAL_PATH)/keylayout/speedy-keypad.kl:system/usr/keylayout/speedy-keypad.kl

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keychars/speedy-keypad.kcm:system/usr/keychars/speedy-keypad.kcm \
    $(LOCAL_PATH)/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl\
    $(LOCAL_PATH)/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl

# Firmware
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/firmware/bcm4329.hcd:system/vendor/firmware/bcm4329.hcd \
    $(LOCAL_PATH)/firmware/default.acdb:system/etc/firmware/default.acdb \
    $(LOCAL_PATH)/firmware/default_mfg.acdb:system/etc/firmware/default_mfg.acdb \
    $(LOCAL_PATH)/firmware/default_org.acdb:system/etc/firmware/default_org.acdb

# OMX Config Profiles
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/etc/vomeComp_RTSP.cfg:system/etc/vomeComp_RTSP.cfg \
    $(LOCAL_PATH)/etc/vomeComp.cfg:system/etc/vomeComp.cfg \
    $(LOCAL_PATH)/etc/vomeCore.cfg:system/etc/vomeCore.cfg \
    $(LOCAL_PATH)/etc/vomeplay.cfg:system/etc/vomeplay.cfg \
    $(LOCAL_PATH)/etc/vommcodec.cfg:system/etc/vommcodec.cfg \
    $(LOCAL_PATH)/etc/voPDLog.cfg:system/etc/voPDLog.cfg \
    $(LOCAL_PATH)/etc/voVidDec.dat:system/etc/voVidDec.dat

# Prop additions
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-sprint-us \
    ro.cdma.home.operator.numeric=310120 \
    ro.cdma.home.operator.alpha=Sprint \
    ro.telephony.ril.v3=skipdatareg \
    htc.audio.alt.enable=0 \
    htc.audio.hac.enable=0 \
    media.a1026.nsForVoiceRec=0 \
    media.a1026.enableA1026=0

# Ramdisk
PRODUCT_PACKAGES += \
    init.target.rc \

# common msm7x30 configs
$(call inherit-product, device/htc/msm7x30-common/msm7x30.mk)
