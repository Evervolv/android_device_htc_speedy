#
# Copyright (C) 2013 The Evervolv Project
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

# Call this first so apn list is actually copied
$(call inherit-product, $(SRC_EVERVOLV_DIR)/config/apns.mk)

# Inherit from glacier device
$(call inherit-product, device/htc/speedy/device.mk)

# Inherit some common evervolv stuff.
$(call inherit-product, $(SRC_EVERVOLV_DIR)/config/common_full_phone.mk)

# Pull all dictionaries
$(call inherit-product, $(SRC_EVERVOLV_DIR)/config/dictionaries/intl.mk)

# Bootanimation
BOOT_ANIMATION_SIZE := wvga

#
# Setup device specific product configuration.
#
PRODUCT_NAME := ev_speedy
PRODUCT_BRAND := sprint
PRODUCT_DEVICE := speedy
PRODUCT_MODEL := PG06100
PRODUCT_MANUFACTURER := HTC

# Set up the product codename & MOTD.
PRODUCT_CODENAME := Artis
PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThank you for choosing Evervolv for your Evo Shift 4G\nPlease visit us at \#evervolv on irc.freenode.net\nFollow @preludedrew for the latest Evervolv updates\nGet the latest rom at evervolv.com\n------------------------------------------------\n"

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=GRI40 PRODUCT_NAME=htc_speedy BUILD_FINGERPRINT=sprint/htc_speedy/speedy:2.3.3/GRI40/74499:user/release-keys PRIVATE_BUILD_DESC="2.76.651.4 CL74499 release-keys"
