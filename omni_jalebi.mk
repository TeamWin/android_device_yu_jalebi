# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/yu/jalebi/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_jalebi
PRODUCT_DEVICE := jalebi
PRODUCT_BRAND := YU
PRODUCT_MODEL := YU4711
PRODUCT_MANUFACTURER := YU

# Default Props
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.build.product=YUNIQUE \
    ro.product.device=YUNIQUE
