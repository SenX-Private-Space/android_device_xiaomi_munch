#
# Copyright (C) 2021-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from munch device
$(call inherit-product, device/xiaomi/munch/device.mk)

# Boot animation resolution
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := lineage_munch
PRODUCT_DEVICE := munch
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 22021211RC

# Rising Maintainer
RISING_MAINTAINER := SenX|センクス & efeisot

# Gms 
WITH_GMS := false

# Launcher
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := false

# Blur
TARGET_ENABLE_BLUR := true

# Camera
PRODUCT_NO_CAMERA := false

# Eppe
TARGET_DISABLE_EPPE := true

# Override perf anims
PERF_ANIM_OVERRIDE := true

# Bypass Charge
BYPASS_CHARGE_SUPPORTED := true

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="munch-user 13 RKQ1.211001.001 V816.0.9.0.ULMMIXM release-keys" \
    BuildFingerprint=POCO/munch_global/munch:13/RKQ1.211001.001/V816.0.9.0.ULMMIXM:user/release-keys \
    RisingChipset="Snapdragon® 870 5G" \
    RisingMaintainer="SenX|センクス & efeisot"
