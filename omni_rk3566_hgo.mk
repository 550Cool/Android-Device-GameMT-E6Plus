#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from rk3566_hgo device
$(call inherit-product, device/hhhc/rk3566_hgo/device.mk)

PRODUCT_DEVICE := rk3566_hgo
PRODUCT_NAME := omni_rk3566_hgo
PRODUCT_BRAND := hhhc
PRODUCT_MODEL := yx15
PRODUCT_MANUFACTURER := hhhc

PRODUCT_GMS_CLIENTID_BASE := android-rockchip

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="hhhc.20240912.145807"

BUILD_FINGERPRINT := hhhc/rk3566_hgo/rk3566_hgo:11/RD2A.211001.002/hp09121457:userdebug/release-keys
