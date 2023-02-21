#
# Copyright (C) 2021-2022 The OS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from martini device
$(call inherit-product, device/oneplus/martini/device.mk)

# Inherit some common  stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Rice stuff
RICE_CHIPSET := SD888
RICE_MAINTAINER := InFeRnO
WITH_GMS := true
SUSHI_BOOTANIMATION := 1080
TARGET_ENABLE_BLUR := true
TARGET_HAS_UDFPS := true
TARGET_USE_PIXEL_FINGERPRINT := true
TARGET_USE_GOOGLE_TELEPHONY := false
TARGET_BUILD_APERTURE_CAMERA := true
#-------------------------------------#

TARGET_BOOT_ANIMATION_RES := 1080
PRODUCT_NAME := lineage_martini
PRODUCT_DEVICE := martini
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := MT2111

PRODUCT_SYSTEM_NAME := OnePlus9RT
PRODUCT_SYSTEM_DEVICE := OnePlus9RT

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

PRIVATE_BUILD_DESC="OnePlus9RT-user 13 TP1A.220624.014 R.b8dc3b_7f89-61 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)
    
BUILD_FINGERPRINT := OnePlus/OnePlus9RT/OP5155L1:13/TP1A.220624.014/R.b8dc3b_7f89-61:user/release-keys
