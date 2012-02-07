$(call inherit-product, device/lge/p500/p500.mk)
$(call inherit-product, vendor/oxygen/products/common.mk)
$(call inherit-product, vendor/oxygen/products/gsm.mk)

PRODUCT_NAME := oxygen_p500
PRODUCT_BRAND := lge
PRODUCT_DEVICE := p500
PRODUCT_MODEL := LG-P500
PRODUCT_MANUFACTURER := LGE
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=thunderg BUILD_ID=GRK39F BUILD_FINGERPRINT=lge/thunderg/thunderg:2.3.6/GRK39F/189904:user/release-keys PRIVATE_BUILD_DESC="thunderg-user 2.3.6 GRK39F 189904 release-keys"


PRODUCT_COPY_FILES += vendor/oxygen/prebuilt/etc/init.d/10apps2sd:system/etc/init.d/10apps2sd

PRODUCT_RELEASE_NAME := LGP500
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/oxygen/products/common_versions.mk
