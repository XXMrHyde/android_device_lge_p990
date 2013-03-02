DEVICE_PACKAGE_OVERLAYS += device/lge/p990/overlay

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_eu.mk)

$(call inherit-product, device/lge/star-common/star.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/p990/overlay

# Inherit non-open-source blobs.
$(call inherit-product-if-exists, vendor/lge/p990/p990-vendor.mk)

# Board-specific init
PRODUCT_COPY_FILES += \
    device/lge/p990/init.p990.rc:root/init.star.rc \
    $(LOCAL_PATH)/ueventd.tegra.rc:root/ueventd.star.rc \
    $(LOCAL_PATH)/fstab.p990:root/fstab.p990

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vold.fstab:system/etc/vold.fstab \
    $(LOCAL_PATH)/init.vsnet:system/bin/init.vsnet \
    $(LOCAL_PATH)/init.vsnet-down:system/bin/init.vsnet-down \
    $(LOCAL_PATH)/gps_brcm_conf.xml:system/etc/gps_brcm_conf.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/wireless.ko:system/lib/modules/wireless.ko

PRODUCT_PACKAGES += \
    lgcpversion

# Dark Jelly 2X Edition additions

# Copy over the Dark Jelly 2X Edition changelog to the device
PRODUCT_COPY_FILES += \
    device/lge/p990/CHANGELOG-DJE.txt:system/etc/CHANGELOG-DJE.txt

# Dark Jelly 2X Edition Property Overrides

PRODUCT_PROPERTY_OVERRIDES += \
    ro.xxmrhyde.version=Dark-Jelly-2X-Edition-(Build-1) \
    updateme.name=Dark-Jelly-2X-Edition \
    updateme.version=1.0.0 \
	pdateme.urlcheck=http://roms.custom-android.de/files/Roms/p990/CM10/update_me_ckeck.xml \
    updateme.reboottype=2 \
    updateme.disableinstalledapps=1 \
    updateme.disablescripts=1

PRODUCT_NAME := full_p990
PRODUCT_DEVICE := p990
PRODUCT_MODEL := LG-P990
