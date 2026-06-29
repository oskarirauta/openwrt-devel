include $(TOPDIR)/rules.mk

PKG_NAME:=libjpeg-dev
PKG_SRC:=libjpeg-turbo
PKG_PATH:=feeds/packages/libjpeg-turbo

include ../header-package.mk
include $(INCLUDE_DIR)/package.mk

define Package/libjpeg-dev
  SECTION:=Devel
  CATEGORY:=Development
  SUBMENU:=Development headers
  TITLE:=libjpeg headers
  DEPENDS:=+libjpeg-turbo
endef

define Package/libjpeg-dev-static-libraries
  SECTION:=Devel
  CATEGORY:=Development
  SUBMENU:=Development headers
  TITLE:=libjpeg static libraries
  DEPENDS:=+libjpeg-dev
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/libjpeg-dev/install
	$(INSTALL_DIR) $(1)/usr/include $(1)/usr/lib/pkgconfig
	cp $(PKG_INSTALL_DIR)/usr/include/jconfig.h $(1)/usr/include/
	cp $(PKG_INSTALL_DIR)/usr/include/jerror.h $(1)/usr/include/
	cp $(PKG_INSTALL_DIR)/usr/include/jmorecfg.h $(1)/usr/include/
	cp $(PKG_INSTALL_DIR)/usr/include/jpeglib.h $(1)/usr/include/
	cp $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/libjpeg.pc $(1)/usr/lib/pkgconfig/
endef

define Package/libjpeg-dev-static-libraries/install
	$(INSTALL_DIR) $(1)/usr/lib
	cp $(PKG_INSTALL_DIR)/usr/lib/libjpeg.a $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libjpeg-dev))
$(eval $(call BuildPackage,libjpeg-dev-static-libraries))
