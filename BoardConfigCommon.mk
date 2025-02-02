#
# Copyright (C) 2018 The LineageOS Project
# Copyright (C) 2018-2021 Xioami-SDM660 Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sdm660-common
include device/xiaomi/sdm660-common/BoardConfigCommon.mk

WAYNE_COMMON_PATH := device/xiaomi/wayne-common

# Build Rules
BUILD_BROKEN_USES_BUILD_COPY_HEADERS := true

# Camera
BOARD_QTI_CAMERA_32BIT_ONLY := true
TARGET_NEEDS_RAW10_BUFFER_FIX := true
TARGET_TS_MAKEUP := true

# Crypto
TARGET_HW_DISK_ENCRYPTION := true

# DT2W
TARGET_TAP_TO_WAKE_NODE := "/sys/touchpanel/double_tap"

# Display
TARGET_SCREEN_DENSITY := 440

# HIDL
DEVICE_MANIFEST_FILE += $(WAYNE_COMMON_PATH)/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG := wayne_defconfig

# Selinux
BOARD_VENDOR_SEPOLICY_DIRS += $(WAYNE_COMMON_PATH)/sepolicy/vendor

# Vendor Security patch level
VENDOR_SECURITY_PATCH := $(PLATFORM_SECURITY_PATCH)

# WLAN MAC
WLAN_MAC_SYMLINK := true

# Properties
TARGET_SYSTEM_PROP += $(WAYNE_COMMON_PATH)/system.prop
TARGET_VENDOR_PROP += $(WAYNE_COMMON_PATH)/vendor.prop

# Inherit the proprietary files
include vendor/xiaomi/wayne-common/BoardConfigVendor.mk
