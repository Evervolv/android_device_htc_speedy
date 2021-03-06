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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := true

# inherit from common msm7x30
-include device/htc/msm7x30-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/htc/speedy/BoardConfigVendor.mk

TARGET_BOOTLOADER_BOARD_NAME := speedy

BOARD_KERNEL_CMDLINE := no_console_suspend=1
BOARD_KERNEL_BASE := 0x4000000
BOARD_KERNEL_PAGE_SIZE := 4096
TARGET_KERNEL_CONFIG := evervolv_speedy_defconfig

# Wimax
#COMMON_GLOBAL_CFLAGS += -DBOARD_HAVE_SQN_WIMAX
#BOARD_HAVE_SQN_WIMAX := true

BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := speedy
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 435941376
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1394606080
BOARD_BOOTIMAGE_PARTITION_SIZE := 4194304
BOARD_FLASH_BLOCK_SIZE := 262144

BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2

#TWRP / Recovery specific defines
DEVICE_RESOLUTION := 480x800
RECOVERY_FSTAB_VERSION := 2

#Not sure why this is needed with twrp. Other devices I've looked at, don't have separate fstab's.
ifeq ($(RECOVERY_BUILD),)
    TARGET_RECOVERY_FSTAB = device/htc/speedy/ramdisk/etc/fstab.speedy
else
    TARGET_RECOVERY_FSTAB = device/htc/speedy/recovery/recovery.fstab
endif

TARGET_RECOVERY_INITRC := device/htc/speedy/recovery/init.rc
TW_NO_SCREEN_BLANK := true
#HAVE_SELINUX := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
#TW_INCLUDE_DUMLOCK := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
