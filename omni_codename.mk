# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk) # If you are building for a phone

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)  # If you are building for a tablet

# Inherit device configuration
$(call inherit-product, device/vendor/codename/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_codename
PRODUCT_DEVICE := codename
PRODUCT_BRAND := vendor
PRODUCT_MODEL := codename
PRODUCT_MANUFACTURER := vendor

# If needed to override these props
# Grab this info from stock build.prop

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="" \
    PRIVATE_BUILD_DESC=""
    
