$(call inherit-product, device/softwinner/tulip-chiphd/device.mk)
$(call inherit-product, build/target/product/full_base.mk)

PRODUCT_COPY_FILES += \
    device/softwinner/common/config/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml

PRODUCT_COPY_FILES += \
    device/softwinner/tulip-chiphd/pinebook/a64_paths.xml:system/etc/a64_paths.xml

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    device/softwinner/tulip-chiphd/pinebook/camera.cfg:system/etc/camera.cfg

# Radio Packages and Configuration Flie
$(call inherit-product, device/softwinner/common/rild/radio_common.mk)

PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=160

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hdmi.device_type=4

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_AAPT_CONFIG := mdpi large xlarge
PRODUCT_AAPT_PREF_CONFIG := mdpi

PRODUCT_BRAND := Allwinner
PRODUCT_NAME := tulip_chiphd_pinebook
PRODUCT_DEVICE := tulip-chiphd
PRODUCT_MODEL := Pinebook
PRODUCT_MANUFACTURER := Allwinner
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)
