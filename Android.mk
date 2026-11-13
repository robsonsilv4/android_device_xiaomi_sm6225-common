#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifneq ($(filter sapphire topaz xun,$(TARGET_DEVICE)),)
include $(call all-makefiles-under,$(LOCAL_PATH))

# The mount points and the EGL, IMS and WFD symlinks used to be created here
# with make rules. They are now declared as Soong modules: the mount points by
# hardware/qcom-caf/common and the symlinks by the vendor tree. Keeping the
# make rules as well makes kati abort with a duplicate recipe.

endif
