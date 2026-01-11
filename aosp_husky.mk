
WITH_GMS = true

$(call inherit-product, device/google/zuma/aosp_common.mk)
$(call inherit-product, device/google/shusky/device-husky.mk)

PRODUCT_NAME := aosp_husky
PRODUCT_DEVICE := husky
PRODUCT_MODEL := AOSP on husky
PRODUCT_BRAND := Android
PRODUCT_MANUFACTURER := Google
