# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 800

# Inherit some common CyanogenMod stuff
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/bq/maxwell2qc/full_maxwell2qc.mk)

PRODUCT_NAME := cm_maxwell2qc
PRODUCT_DEVICE := maxwell2qc

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=bq_Maxwell2_QuadCore
