$(call inherit-product, device/htc/bravoc/full_bravoc.mk)
$(call inherit-product, vendor/oxygen/products/common.mk)

PRODUCT_NAME := oxygen_bravoc
PRODUCT_BRAND := htc
PRODUCT_DEVICE := bravoc
PRODUCT_MODEL := HTC Desire CDMA
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=bravoc BUILD_ID=GRJ22 BUILD_DISPLAY_ID=GRJ90 BUILD_FINGERPRINT=google/passion/passion:2.3.4/GRJ22/121341:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.4 GRJ22 121341 release-keys"

PRODUCT_PACKAGES += Torch

PRODUCT_COPY_FILES += \
    vendor/oxygen/prebuilt/etc/init.d/10apps2sd:system/etc/init.d/10apps2sd

ifdef OXYGEN_RELEASE
    PRODUCT_PROPERTY_OVERRIDES += ro.modversion=Oxygen-2.2.3-BravoC
else
    PRODUCT_PROPERTY_OVERRIDES += ro.modversion=Oxygen-2-$(shell date +%m%d%Y)-NIGHTLY-BravoC
endif
