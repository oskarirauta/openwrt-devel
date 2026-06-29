include $(TOPDIR)/rules.mk

PKG_NAME:=libpng-dev
PKG_SRC:=libpng
PKG_PATH:=feeds/packages/libpng

include ../header-package.mk
include $(INCLUDE_DIR)/package.mk

define Package/libpng-dev
  SECTION:=Devel
  CATEGORY:=Development
  SUBMENU:=Development headers
  TITLE:=libpng headers
  DEPENDS:=+libpng
endef

define Package/libpng-dev-static-libraries
  SECTION:=Devel
  CATEGORY:=Development
  SUBMENU:=Development headers
  TITLE:=libpng static libraries
  DEPENDS:=+libpng-dev
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/libpng-dev/install
	$(INSTALL_DIR) $(1)/usr/include/libpng16 $(1)/usr/lib/pkgconfig
	cp $(PKG_INSTALL_DIR)/usr/include/png.h $(1)/usr/include/
	cp $(PKG_INSTALL_DIR)/usr/include/pngconf.h $(1)/usr/include/
	cp $(PKG_INSTALL_DIR)/usr/include/pnglibconf.h $(1)/usr/include/
	cp -r $(PKG_INSTALL_DIR)/usr/include/libpng16/** $(1)/usr/include/libpng16/
	cp $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/** $(1)/usr/lib/pkgconfig/
endef

define Package/libpng-dev-static-libraries/install
	$(INSTALL_DIR) $(1)/usr/lib
	cp $(PKG_INSTALL_DIR)/usr/lib/libpng.a $(1)/usr/lib/
	cp $(PKG_INSTALL_DIR)/usr/lib/libpng16.a $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libpng-dev))
$(eval $(call BuildPackage,libpng-dev-static-libraries))
