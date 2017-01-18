LOCAL_PATH := device/lge/v480

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/lge/v480/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernel:kernel \
    $(LOCAL_PATH)/dt.img:dt.img \
    $(LOCAL_PATH)/fstab.v4xx:root/fstab.v4xx

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := v480
PRODUCT_BRAND := LGE
