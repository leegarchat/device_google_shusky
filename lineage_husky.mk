#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-FileCopyrightText: The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

ifneq ($(WITH_GMS),true)
    PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
        system/app/GoogleExtShared/GoogleExtShared.apk \
        system/app/GooglePrintRecommendationService/GooglePrintRecommendationService.apk \
        system/etc/permissions/privapp-permissions-google.xml \
        system/priv-app/DocumentsUIGoogle/DocumentsUIGoogle.apk \
        system/priv-app/GooglePackageInstaller/GooglePackageInstaller.apk \
        system/priv-app/TagGoogle/TagGoogle.apk
endif
# Inherit device configuration
DEVICE_CODENAME := husky
DEVICE_PATH := device/google/shusky
VENDOR_PATH := vendor/google/husky
$(call inherit-product, device/google/zuma/evolution_common.mk)
$(call inherit-product, $(DEVICE_PATH)/aosp_$(DEVICE_CODENAME).mk)
$(call inherit-product, $(DEVICE_PATH)/$(DEVICE_CODENAME)/device-evolution.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 8 Pro
PRODUCT_NAME := lineage_$(DEVICE_CODENAME)

# Boot animation
TARGET_SCREEN_HEIGHT := 2992
TARGET_SCREEN_WIDTH := 1344

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="husky-user 16 BP3A.251105.015 14339231 release-keys" \
    BuildFingerprint=google/husky/husky:16/BP3A.251105.015/14339231:user/release-keys \
    DeviceProduct=$(DEVICE_CODENAME)

$(call inherit-product, $(VENDOR_PATH)/$(DEVICE_CODENAME)-vendor.mk)
$(call inherit-product, device/google/zuma/customparts/PartCustomThermalConfigs.mk)