include $(TOPDIR)/rules.mk

PKG_NAME:=zlib-dev
PKG_SRC:=zlib
PKG_PATH:=libs/zlib

include ../header-package.mk
include $(INCLUDE_DIR)/package.mk

define Package/zlib-dev
  SECTION:=Devel
  CATEGORY:=Development
  SUBMENU:=Development headers
  TITLE:=zlib headers
  DEPENDS:=+zlib
endef

define Package/zlib-dev-static-libraries
  SECTION:=Devel
  CATEGORY:=Development
  SUBMENU:=Development headers
  TITLE:=zlib static libraries
  DEPENDS:=+zlib-dev
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/zlib-dev/install
	$(INSTALL_DIR) $(1)/usr/include $(1)/usr/lib/pkgconfig
	cp $(PKG_INSTALL_DIR)/usr/include/zlib.h $(1)/usr/include/
	cp $(PKG_INSTALL_DIR)/usr/include/zconf.h $(1)/usr/include/
	cp $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/zlib.pc $(1)/usr/lib/pkgconfig/
endef

define Package/zlib-dev-static-libraries/install
	$(INSTALL_DIR) $(1)/usr/lib
	cp $(PKG_INSTALL_DIR)/usr/lib/libz.a $(1)/usr/lib/
endef

$(eval $(call BuildPackage,zlib-dev))
$(eval $(call BuildPackage,zlib-dev-static-libraries))
