#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from chenfeng device
$(call inherit-product, device/xiaomi/chenfeng/device.mk)

PRODUCT_NAME := lineage_chenfeng
PRODUCT_DEVICE := chenfeng
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 24053PY09G

PRODUCT_SYSTEM_NAME := chenfeng_global
PRODUCT_SYSTEM_DEVICE := chenfeng

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="chenfeng_global-user 14 UKQ1.240116.001 V816.0.6.0.UNJINXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := Xiaomi/chenfeng_global/chenfeng:14/UKQ1.240116.001/V816.0.6.0.UNJINXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
