$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/nokia/nokia6/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata \
    device/nokia/nokia6/kernel:kernel \
    device/nokia/nokia6/fstab.qcom:root/fstab.qcom

# Hardware Enabled Encryption
PRODUCT_PACKAGES += \
    libcryptfs_hw

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := nokia6
PRODUCT_NAME := omni_nokia6
PRODUCT_BRAND := Nokia
PRODUCT_MODEL := Nokia 6
PRODUCT_MANUFACTURER := Nokia

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=Nokia6
