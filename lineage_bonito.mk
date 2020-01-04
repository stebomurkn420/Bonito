# Boot animation
TARGET_SCREEN_HEIGHT := 2160
TARGET_SCREEN_WIDTH := 1080

# Inherit common Lineage product configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/bonito/aosp_bonito.mk)

# Inherit Lineage device configuration
$(call inherit-product, device/google/bonito/device-lineage.mk)

PRODUCT_NAME := lineage_bonito
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 3a XL

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=bonito
