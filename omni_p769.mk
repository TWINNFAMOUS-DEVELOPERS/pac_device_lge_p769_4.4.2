# Copyright (C) 2013 OmniROM Project
# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/lge/p769/p769.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=u2_open_eu BUILD_FINGERPRINT=lge/u2_open_eu/u2:4.1.2/JRO03L/P76020b.4DAAAC8F:user/release-keys PRIVATE_BUILD_DESC="u2_open_eu-user 4.1.2 JRO03L P76020b.4DAAAC8F release-keys"

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p769

# Enable Torch
PRODUCT_PACKAGES += Torch LgeL9Parts
 
# Discard inherited values and use our own instead.
PRODUCT_NAME := omni_p769
PRODUCT_DEVICE := p769
PRODUCT_MODEL := LG-P769
PRODUCT_MANUFACTURER := LGE
