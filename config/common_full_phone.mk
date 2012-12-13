$(call inherit-product, vendor/oxygen/config/common.mk)

include frameworks/base/data/sounds/AudioPackage7.mk

$(call inherit-product, vendor/oxygen/config/supersu.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Girtab.ogg \
    ro.config.notification_sound=Proxima.ogg \
    ro.config.alarm_alert=Cesium.ogg

PRODUCT_PACKAGES += \
    Mms
