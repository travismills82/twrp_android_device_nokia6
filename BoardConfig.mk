# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a7

# Board
TARGET_BOARD_PLATFORM := msm8937
TARGET_BOOTLOADER_BOARD_NAME := msm8937
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM_GPU := qcom-adreno505
TARGET_PLATFORM_DEVICE_BASE := /devices/soc/

# Encryption
TARGET_HW_DISK_ENCRYPTION := true
TARGET_KEYMASTER_WAIT_FOR_QSEE := true
TW_INCLUDE_CRYPTO := true
#TARGET_CRYPTFS_HW_PATH := $(DEVICE_PATH)/cryptfs_hw

# Kernel
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 androidboot.bootdevice=7824900.sdhci earlycon=msm_hsl_uart,0x78B0000 loglevel=0 buildvariant=user androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100

# Partition Sizes ;need to fill out correctly
BOARD_BOOTIMAGE_PARTITION_SIZE := 
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 
BOARD_USERDATAIMAGE_PARTITION_SIZE := 
BOARD_CACHEIMAGE_PARTITION_SIZE := 
BOARD_FLASH_BLOCK_SIZE := 

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

# TWRP-Specific
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun0/file ;need to correct path
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness ;need to correct path
TARGET_RECOVERY_QCOM_RTC_FIX := true
RECOVERY_SDCARD_ON_DATA := true
TW_THEME := portrait_hdpi
TW_DEFAULT_BRIGHTNESS := 200
TW_MAX_BRIGHTNESS := 255
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_NTFS_3G := true
TW_EXCLUDE_SUPERSU := true
