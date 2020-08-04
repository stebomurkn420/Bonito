#
# Copyright (C) 2020 shagbag913
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Common board config for bonito, sargo

# Build vendor image
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
AB_OTA_PARTITIONS += vendor

BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --set_hashtree_disabled_flag
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 2

BOARD_KERNEL_IMAGE_NAME := Image.lz4
TARGET_COMPILE_WITH_MSM_KERNEL := true
TARGET_KERNEL_ADDITIONAL_FLAGS := \
    DTC=$(shell pwd)/prebuilts/misc/$(HOST_OS)-x86/dtc/dtc \
    MKDTIMG=$(shell pwd)/prebuilts/misc/$(HOST_OS)-x86/libufdt/mkdtimg
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_CLANG_COMPILE := true
TARGET_KERNEL_CONFIG := dank_defconfig
TARGET_KERNEL_SOURCE := kernel/google/b4s4
DISABLE_ARTIFACT_PATH_REQUIREMENTS := true

# GAPPS
TARGET_GAPPS_OVERRIDE += \
    AudioFX \
    BlissDialer \
    ExactCalculator \
    Etar \
    Snap \
    Jelly
    

-include vendor/google/bonito/BoardConfigVendor.mk
