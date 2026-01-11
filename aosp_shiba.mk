

WITH_GMS = true

$(call inherit-product, device/google/zuma/aosp_common.mk)
$(call inherit-product, device/google/shusky/device-shiba.mk)

PRODUCT_NAME := aosp_shiba
PRODUCT_DEVICE := shiba
PRODUCT_MODEL := AOSP on shiba
PRODUCT_BRAND := Android
PRODUCT_MANUFACTURER := Google
