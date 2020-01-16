# Boot animation
TARGET_SCREEN_HEIGHT := 2160
TARGET_SCREEN_WIDTH := 1080

# Inherit common Lineage product configuration
$(call inherit-product, vendor/havoc/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/bonito/aosp_bonito.mk)

# Inherit Lineage device configuration
$(call inherit-product, device/google/bonito/device-lineage.mk)

# Inherit proprietary blobs
$(call inherit-product-if-exists, vendor/google/bonito/bonito-vendor.mk)

PRODUCT_NAME := havoc_bonito
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 3a XL

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="bonito" \
    TARGET_DEVICE="bonito" \
    PRIVATE_BUILD_DESC="bonito-user 10 QQ1A.200105.002 6031801 release-keys"

BUILD_FINGERPRINT := "google/bonito/bonito:10/QQ1A.200105.002/6031801:user/release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=google/bonito/bonito:10/QQ1A.200105.002/6031801:user/release-keys
