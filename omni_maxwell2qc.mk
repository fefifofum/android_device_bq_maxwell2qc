#
# Copyright (C) 2014 OmniROM Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit common Omni configurations
$(call inherit-product, vendor/omni/config/common_tablet.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit device specific configurations
$(call inherit-product, device/bq/maxwell2qc/device.mk)

# Set those variables here to overwrite the inherited values
PRODUCT_NAME := omni_maxwell2qc
PRODUCT_DEVICE := maxwell2qc
PRODUCT_BRAND := bq
PRODUCT_MODEL := bq Maxwell 2 Quad Core
PRODUCT_MANUFACTURER := bq

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=bq_Maxwell2_QuadCore

# Inherit from the non-open-source side
$(call inherit-product, vendor/bq/maxwell2qc/maxwell2qc-vendor.mk)
