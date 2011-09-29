$(call inherit-product, device/htc/passion/full_passion.mk)
$(call inherit-product, vendor/oxygen/products/common.mk)
$(call inherit-product, vendor/oxygen/products/gsm.mk)

PRODUCT_NAME := oxygen_passion
PRODUCT_BRAND := google
PRODUCT_DEVICE := passion
PRODUCT_MODEL := Nexus One
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=passion BUILD_ID=GRJ22 BUILD_DISPLAY_ID=GRJ90 BUILD_FINGERPRINT=google/passion/passion:2.3.4/GRJ22/121341:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.4 GRJ22 121341 release-keys"

PRODUCT_COPY_FILES += vendor/oxygen/prebuilt/etc/init.d/10apps2sd:system/etc/init.d/10apps2sd

ifdef OXYGEN_RELEASE
    PRODUCT_PROPERTY_OVERRIDES += ro.modversion=Oxygen-2.2.3-N1
else
    PRODUCT_PROPERTY_OVERRIDES += ro.modversion=Oxygen-2-$(shell date +%m%d%Y)-NIGHTLY-N1
endif
