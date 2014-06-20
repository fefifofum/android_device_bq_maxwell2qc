#
# Copyright (C) 2014 The Android Open Source Project
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

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_AAPT_CONFIG := normal large tvdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := tvdpi

DEVICE_PACKAGE_OVERLAYS += device/bq/maxwell2qc/overlay


# Hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Prebuilt
PRODUCT_COPY_FILES += \
    device/bq/maxwell2qc/prebuilt/audio_policy.conf:system/etc/audio_policy.conf \
    device/bq/maxwell2qc/prebuilt/config.txt:system/etc/firmware/config.txt \
    device/bq/maxwell2qc/prebuilt/gps.conf:system/etc/gps.conf \
    device/bq/maxwell2qc/prebuilt/gpsconfig.xml:system/etc/gps/gpsconfig.xml \
    device/bq/maxwell2qc/prebuilt/media_codecs.xml:system/etc/media_codecs.xml \
    device/bq/maxwell2qc/prebuilt/media_profiles.xml:system/etc/media_profiles.xml \
    device/bq/maxwell2qc/prebuilt/nvram_RK903_26M.cal:system/etc/firmware/nvram_RK903_26M.cal \
    device/bq/maxwell2qc/prebuilt/packages-compat.xml:system/etc/packages-compat.xml \
    device/bq/maxwell2qc/prebuilt/packages-composer.xml:system/etc/packages-composer.xml \
    device/bq/maxwell2qc/prebuilt/performance_info.xml:system/etc/performance_info.xml \
    device/bq/maxwell2qc/prebuilt/rk29-keypad.kl:/system/usr/keylayout/rk29-keypad.kl \
    device/bq/maxwell2qc/prebuilt/rk3x:system/bin/rk3x

# Rootdir
PRODUCT_COPY_FILES += \
    device/bq/maxwell2qc/rootdir/fstab.rk30board:root/fstab.rk30board \
    device/bq/maxwell2qc/rootdir/init.recovery.rk30board.rc:root/init.recovery.rk30board.rc \
    device/bq/maxwell2qc/rootdir/init.rk30board.rc:root/init.rk30board.rc \
    device/bq/maxwell2qc/rootdir/init.rk30board.usb.rc:root/init.rk30board.usb.rc \
    device/bq/maxwell2qc/rootdir/ueventd.rk30board.rc:root/ueventd.rk30board.rc

# Rootdir blobs
PRODUCT_COPY_FILES += \
    device/bq/maxwell2qc/rootdir/drmboot.ko:root/drmboot.ko \
    device/bq/maxwell2qc/rootdir/init:root/init \
    device/bq/maxwell2qc/rootdir/resize2fs:root/sbin/resize2fs \
    device/bq/maxwell2qc/rootdir/rk30xxnand_ko.ko.3.0.36+:root/rk30xxnand_ko.ko.3.0.36+

# Charger
PRODUCT_PACKAGES += \
    charger \
    charger_res_images

# HAL
PRODUCT_PACKAGES += \
    keystore.rk30xx \
    lights.rk30board \
    power.rk30xx \
    sensors.rk30board

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.r_submix.default \
    audio.usb.default

# Other
PRODUCT_PACKAGES += \
    make_ext4fs \
    resize2fs \
    setup_fs \
    librs_jni \
    libnetcmdiface \
    libMcClient \
    mcDriverDaemon \
    com.android.future.usb.accessory

# Default props
PRODUCT_PROPERTY_OVERRIDES += \
    cm.updater.uri=http://bokerones.noip.me/CyanogenModOTA/api \
    ro.opengles.version=131072 \
    ro.sf.hwrotation=180 \
    ro.sf.lcd_density=213 \
    ro.sf.lcdc_composer=0 \
    debug.hwui.render_dirty_regions=false \
    ro.config.facelock=enable_facelock \
    persist.facelock.detect_cutoff=5000 \
    persist.facelock.recog_cutoff=5000 \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15 \
    dalvik.vm.debug.alloc=0

# Wifi overlay
$(call inherit-product, hardware/broadcom/wlan/bcmdhd/config/config-bcm.mk)

# Dalvik heap config
$(call inherit-product, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)
