PLATFORM_PATH := device/TOLINO/shine_3

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := false
TARGET_CPU_VARIANT :=cortex-a9

# Kernel
TARGET_PREBUILT_KERNEL := $(PLATFORM_PATH)/prebuilt/kernel
BOARD_KERNEL_CMDLINE := console=ttymxc0,115200 init=/init androidboot.console=ttymxc0 video=mxcepdcfb:E060SCM,bpp=16 video=mxc_elcdif_fb:off no_console_suspend
BOARD_KERNEL_BASE := 0x80800000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := false
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 6258688
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 402644992
BOARD_CACHEIMAGE_PARTITION_SIZE := 402644992
BOARD_USERDATAIMAGE_PARTITION_SIZE := 536862720
# BOARD_KERNEL_PAGESIZE * 64
BOARD_FLASH_BLOCK_SIZE := 131072

# Storage
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_FSTAB := $(PLATFORM_PATH)/recovery.fstab

# Screen
TW_BRIGHTNESS_PATH := /sys/class/backlight/mxc_msp430_fl.0/brightness
TW_DEFAULT_BRIGHTNESS := 50
TW_MAX_BRIGHTNESS := 100
#TW_SCREEN_BLANK_ON_BOOT := true
TW_NO_SCREEN_TIMEOUT := true
TW_NO_SCREEN_BLANK := true

# Touch
RECOVERY_TOUCHSCREEN_FLIP_X := true
RECOVERY_TOUCHSCREEN_SWAP_XY := true
TW_IGNORE_MAJOR_AXIS_0 := true
TW_IGNORE_MT_POSITION_0 := true

#IMX EPDC
TW_IMX_EINK := true
TW_IMX_EINK_ROTATE := 3
#TW_IMX_EINK_MONOCHROME := true

#MISC
TW_NO_REBOOT_BOOTLOADER := true
TW_EXCLUDE_SUPERSU := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TWRP_EVENT_LOGGING := true
TWRP_INCLUDE_LOGCAT := true
TARGET_UNIFIED_DEVICE := true

#THEME
TW_THEME := portrait_hdpi
#TW_CUSTOM_THEME := $(if $(wildcard $(PLATFORM_PATH)/theme),$(PLATFORM_PATH)/theme)
