$(call inherit-product, device/softwinner/tulip-chiphd/device.mk)
$(call inherit-product, device/google/atv/products/atv_generic.mk)

GAPPS_VARIANT := nano
GAPPS_EXCLUDED_PACKAGES += SetupWraith

PRODUCT_PACKAGES += \
    Bluetooth \
    Provision

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.live_tv.xml:system/etc/permissions/android.software.live_tv.xml

PRODUCT_COPY_FILES += \
		frameworks/av/media/libstagefright/data/media_codecs_google_tv.xml:system/etc/media_codecs_google_tv.xml \

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.external.xml:system/etc/permissions/android.hardware.camera.external.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    device/softwinner/tulip-chiphd/configs/camera.cfg:system/etc/camera.cfg

PRODUCT_COPY_FILES += \
    hardware/aw/audio/tulip/a64_paths.xml:system/etc/a64_paths.xml

# xhdpi, while we are hardcoding the 1080 resolution.
# when we start doing 720 as well, will need to stop hardcoding this.
PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density.480=160 \
	ro.sf.lcd_density.576=160 \
	ro.sf.lcd_density.720=213 \
	ro.sf.lcd_density.1080=320 \
	ro.sf.lcd_density.2160=640

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hdmi.device_type=4

PRODUCT_PROPERTY_OVERRIDES += \
    service.adb.tcp.port=5555

PRODUCT_CHARACTERISTICS := tv

PRODUCT_AAPT_CONFIG := normal large xlarge hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

$(call inherit-product, vendor/opengapps/atv-build/atv-vendor.mk)

PRODUCT_BRAND := Allwinner
PRODUCT_NAME := tulip_chiphd_atv
PRODUCT_DEVICE := tulip-chiphd
PRODUCT_MODEL := PINE A64
PRODUCT_MANUFACTURER := Allwinner
