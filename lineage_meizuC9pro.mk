# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from meizuC9pro device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := meizu
PRODUCT_DEVICE := meizuC9pro
PRODUCT_MANUFACTURER := meizu
PRODUCT_NAME := lineage_meizuC9pro
PRODUCT_MODEL := meizu C9 pro

PRODUCT_GMS_CLIENTID_BASE := android-meizu
TARGET_VENDOR := meizu
TARGET_VENDOR_PRODUCT_NAME := meizuC9pro
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="SM1802A03_A-user 8.1.0 OPM2.171019.012 23 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Meizu/meizu_C9pro/meizuC9pro:8.1.0/OPM2.171019.012/23:user/release-keys
