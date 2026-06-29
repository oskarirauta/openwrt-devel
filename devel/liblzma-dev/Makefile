include $(TOPDIR)/rules.mk

PKG_NAME:=liblzma-dev
PKG_SRC:=xz
PKG_PATH:=feeds/packages/xz

include ../header-package.mk
include $(INCLUDE_DIR)/package.mk

define Package/liblzma-dev
  SECTION:=Devel
  CATEGORY:=Development
  SUBMENU:=Development headers
  TITLE:=liblzma headers
  DEPENDS:=+liblzma
endef

define Package/liblzma-dev-static-libraries
  SECTION:=Devel
  CATEGORY:=Development
  SUBMENU:=Development headers
  TITLE:=liblzma static libraries
  DEPENDS:=+liblzma-dev
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/liblzma-dev/install
	$(INSTALL_DIR) $(1)/usr/include $(1)/usr/lib $(1)/usr/lib/pkgconfig
	cp $(PKG_INSTALL_DIR)/usr/include/lzma.h $(1)/usr/include/
	cp -r $(PKG_INSTALL_DIR)/usr/include/lzma $(1)/usr/include/
	cp $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/liblzma.pc $(1)/usr/lib/pkgconfig/
	ln -s liblzma.so.5 $(1)/usr/lib/liblzma.so
endef

define Package/liblzma-dev-static-libraries/install
	$(INSTALL_DIR) $(1)/usr/lib
	cp $(PKG_INSTALL_DIR)/usr/lib/liblzma.a $(1)/usr/lib/
endef

$(eval $(call BuildPackage,liblzma-dev))
$(eval $(call BuildPackage,liblzma-dev-static-libraries))
