################################################################################
#
# rgb-pi
#
################################################################################

RGB_PI_VERSION = 9fa8fb4996bd5c98038a6c77dc6f314f78ac5858
#RGB_PI_SITE = git://github.com/mortaca/RGB-Pi
RGB_PI_SITE = $(call github,mortaca,rgb-pi,$(RGB_PI_VERSION))
RGB_PI_DEPENDENCIES += rpi-firmware

define RGB_PI_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0644 $(@D)/overlays/rgb-pi.dtbo $(BINARIES_DIR)/rpi-firmware/overlays/
endef

$(eval $(generic-package))
