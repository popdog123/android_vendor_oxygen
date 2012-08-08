PRODUCT_BRAND ?= oxygen

PRODUCT_PROPERTY_OVERRIDES += \
    ro.rommanager.developerid=adamg

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=dd-MM-yyyy \
    ro.com.android.dataroaming=false

PRODUCT_COPY_FILES += \
    vendor/oxygen/prebuilt/common/bin/sysinit:system/bin/sysinit \
    vendor/oxygen/prebuilt/common/etc/mkshrc:system/etc/mkshrc \
    vendor/oxygen/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/oxygen/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

PRODUCT_PACKAGES += \
    Camera \
    LatinIME \
    Superuser \
    Superuser.apk \
    su

PRODUCT_PACKAGES += \
    VideoEditor \
    VoiceDialer \
    SoundRecorder \
    Basic \
    HoloSpiralWallpaper \
    MagicSmokeWallpapers \
    NoiseField \
    Galaxy4 \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    PhaseBeam

include vendor/google/gapps.mk

PRODUCT_PACKAGE_OVERLAYS += vendor/oxygen/overlay/dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/oxygen/overlay/common

PRODUCT_VERSION_MAJOR = 3
PRODUCT_VERSION_MINOR = 0
PRODUCT_VERSION_MAINTENANCE = 0

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=IMM76D

ifdef OXYGEN_SNAPSHOT
    OXYGEN_VERSION := Oxygen-$(PRODUCT_VERSION_MAJOR)-$(shell date +%Y%m%d)-SNAPSHOT-$(PRODUCT_RELEASE_NAME)
else
    ifdef OXYGEN_RELEASE
        OXYGEN_VERSION := Oxygen-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)$(PRODUCT_VERSION_DEVICE_SPECIFIC)-$(PRODUCT_RELEASE_NAME)
    else
        OXYGEN_VERSION := Oxygen-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)$(PRODUCT_VERSION_DEVICE_SPECIFIC)-$(PRODUCT_RELEASE_NAME)-UNOFFICIAL
    endif
endif

PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=$(OXYGEN_VERSION)
