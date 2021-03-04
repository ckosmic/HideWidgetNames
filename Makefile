THEOS_DEVICE_IP = 192.168.86.250

ARCHS = arm64 arm64e
INSTALL_TARGET_PROCESSES = SpringBoard


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = HideWidgetNames

HideWidgetNames_FILES = Tweak.x
HideWidgetNames_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk