ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/yu/jalebi/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product-if-exists, build/target/product/full.mk)

