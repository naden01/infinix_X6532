#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from X6532 device
$(call inherit-product, device/infinix/X6532/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

PRODUCT_DEVICE := X6532
PRODUCT_NAME := twrp_X6532
PRODUCT_BRAND := INFINIX
PRODUCT_MODEL := infinix X6532
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-infinix

# Apply JDM haptics patch before building recovery
$(shell $(LOCAL_PATH)/apply_jdm_haptics_patch.sh >/dev/null 2>&1)