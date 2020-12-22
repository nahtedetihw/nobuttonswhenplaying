TARGET := iphone:clang:latest:13.0
INSTALL_TARGET_PROCESSES = SpringBoard

DEBUG = 0
FINALPACKAGE = 1


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = NoButtonsWhenPlaying

NoButtonsWhenPlaying_FILES = Tweak.xm
NoButtonsWhenPlaying_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
