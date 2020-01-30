# Boot animation
TARGET_SCREEN_HEIGHT := 2220
TARGET_SCREEN_WIDTH := 1080

# Inherit common Lineage product configuration
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/bonito/aosp_sargo.mk)

# Inherit Lineage device configuration
$(call inherit-product, device/google/bonito/device-lineage.mk)

# Inherit proprietary blobs
# Include sargo before bonito to use sargo versions of blobs if they exist
$(call inherit-product-if-exists, vendor/google/sargo/sargo-vendor.mk)
$(call inherit-product-if-exists, vendor/google/bonito/bonito-vendor.mk)

PRODUCT_NAME := bliss_sargo
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 3a

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=sargo \
    PRIVATE_BUILD_DESC="sargo-user 10 QQ1A.200105.002 6031801 release-keys"

BUILD_FINGERPRINT := google/sargo/sargo:10/QQ1A.200105.002/6031801:user/release-keys
