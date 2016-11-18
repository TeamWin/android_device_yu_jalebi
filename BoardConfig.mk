# Bootloader
# Make it equal to ro.product.board from your build.prop
TARGET_BOOTLOADER_BOARD_NAME :=
TARGET_NO_BOOTLOADER := true

# Platform
# BOARD_PLATFORM is usually the processor for MTK devices, and chipset for MSM ones.
TARGET_BOARD_PLATFORM :=
#TARGET_BOARD_PLATFORM_GPU :=

# Architecture

# all this info can be grabbed right off the build.prop
TARGET_ARCH :=
TARGET_ARCH_VARIANT :=
TARGET_CPU_ABI :=
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT :=

# For arm64 and arm64 ONLY
TARGET_2ND_ARCH :=
TARGET_2ND_ARCH_VARIANT :=
TARGET_2ND_CPU_ABI :=
TARGET_2ND_CPU_ABI2 :=
TARGET_2ND_CPU_VARIANT :=

# Kernel

# You can get these by unpacking your stock recovery.img through osm0sis's AIK tool. Go on, have a Google ;)
BOARD_KERNEL_CMDLINE :=
BOARD_KERNEL_BASE :=
BOARD_KERNEL_PAGESIZE :=

# If you want to use a kernel source, uncomment the next two lines
# TARGET_KERNEL_CONFIG := codename_defconfig
# TARGET_KERNEL_SOURCE := kernel/vendor/codename
TARGET_PREBUILT_KERNEL := device/vendor/codename/kernel
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00000000 --ramdisk_offset 0x00000000 --dt device/vendor/codename/dt.img --tags_offset 0x00000000
BOARD_KERNEL_SEPARATED_DT :=
TARGET_PREBUILT_KERNEL := device/vendor/codename/kernel

# Partition info
TARGET_USERIMAGES_USE_EXT4 := true

# This is usually not needed for standalone devices. If you are creating a unified tree for
# multiple variants, you may want to read up about Vendor init.
TARGET_PLATFORM_DEVICE_BASE :=
# Sizes to be put in in bytes. cant stress this enough.
BOARD_BOOTIMAGE_PARTITION_SIZE :=
BOARD_RECOVERYIMAGE_PARTITION_SIZE :=
BOARD_SYSTEMIMAGE_PARTITION_SIZE :=
BOARD_USERDATAIMAGE_PARTITION_SIZE :=
BOARD_FLASH_BLOCK_SIZE :=

# TWRP specific flags. Check out this thread for more info on them : http://tinyw.in/twrpflags

# This may be needed if you're using CM and cloned twrp source to bootable/recovery-twrp. Ignore if you're on Omni like we recommend
RECOVERY_VARIANT := twrp
# Fixes slanty graphics if they're present
RECOVERY_GRAPHICS_USE_LINELENGTH := true
# External storage stuff. Adapt it for your device
TW_EXTERNAL_STORAGE_PATH := 
TW_EXTERNAL_STORAGE_MOUNT_POINT := 
TW_DEFAULT_EXTERNAL_STORAGE := true
# Path to sysfs that controls brightness
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
# Maximum brightness
TW_MAX_BRIGHTNESS := 255
TW_THEME := 
