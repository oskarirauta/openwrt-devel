include $(TOPDIR)/rules.mk

PKG_NAME:=libzstd-dev
PKG_SRC:=zstd
PKG_PATH:=feeds/packages/zstd

include ../header-package.mk
include $(INCLUDE_DIR)/package.mk

define Package/libzstd-dev
  SECTION:=Devel
  CATEGORY:=Development
  SUBMENU:=Development headers
  TITLE:=zstd headers
  DEPENDS:=+libzstd
endef

define Package/libzstd-dev-static-libraries
  SECTION:=Devel
  CATEGORY:=Development
  SUBMENU:=Development headers
  TITLE:=zstd static libraries
  DEPENDS:=+libzstd-dev
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/libzstd-dev/install
	$(INSTALL_DIR) $(1)/usr/include $(1)/usr/lib $(1)/usr/lib/pkgconfig
	cp $(PKG_INSTALL_DIR)/usr/include/zstd.h $(1)/usr/include/
	cp $(PKG_INSTALL_DIR)/usr/include/zstd_errors.h $(1)/usr/include/
	cp $(PKG_INSTALL_DIR)/usr/include/zdict.h $(1)/usr/include/
	cp $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/libzstd.pc $(1)/usr/lib/pkgconfig/
	ln -s libzstd.so.1 $(1)/usr/lib/libzstd.so
endef

define Package/libzstd-dev-static-libraries/install
	$(INSTALL_DIR) $(1)/usr/lib
	cp $(PKG_INSTALL_DIR)/usr/lib/libzstd.a $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libzstd-dev))
$(eval $(call BuildPackage,libzstd-dev-static-libraries))
