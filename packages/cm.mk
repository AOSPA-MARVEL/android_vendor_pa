$(call inherit-product, vendor/pa/packages/gapps_common.mk)

# Extra packages from CM-10.1
PRODUCT_PACKAGES += \
    CMFileManager \
    Trebuchet \
    Gallery2 \
    LiveWallpapersPicker \
    LatinIME \
    SpareParts \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs \
    bash \
    vim \
    nano \
    htop \
    powertop \
    lsof \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh \
    rsync

# GSM APN list
PRODUCT_COPY_FILES += \
    vendor/pa/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# GSM SPN overrides list
PRODUCT_COPY_FILES += \
    vendor/pa/prebuilt/common/etc/spn-conf.xml:system/etc/spn-conf.xml

# SIM Toolkit
PRODUCT_PACKAGES += \
    Stk

# BT config
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.conf:system/etc/bluetooth/main.conf

# Nam configuration script
PRODUCT_COPY_FILES += \
    vendor/pa/prebuilt/common/bin/modelid_cfg.sh:system/bin/modelid_cfg.sh

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Don't export PS1 in /system/etc/mkshrc.
PRODUCT_COPY_FILES += \
    vendor/pa/prebuilt/common/etc/mkshrc:system/etc/mkshrc

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false
