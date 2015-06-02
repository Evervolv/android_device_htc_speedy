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

TARGET_BOOTLOADER_BOARD_NAME := speedy

# inherit from common msm7x30
-include device/htc/msm7x30-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/htc/speedy/BoardConfigVendor.mk

# FS
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 435941376
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1394606080
BOARD_BOOTIMAGE_PARTITION_SIZE := 4194304

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Kernel
BOARD_KERNEL_BASE := 0x04000000
