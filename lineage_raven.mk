# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from raven device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := google
PRODUCT_DEVICE := raven
PRODUCT_MANUFACTURER := google
PRODUCT_NAME := lineage_raven
PRODUCT_MODEL := Pixel 6 Pro

PRODUCT_GMS_CLIENTID_BASE := android-google
TARGET_VENDOR := google
TARGET_VENDOR_PRODUCT_NAME := raven
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="raven-user Tiramisu TPP2.220218.010 8278900 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := google/raven/raven:Tiramisu/TPP2.220218.010/8278900:user/release-keys
