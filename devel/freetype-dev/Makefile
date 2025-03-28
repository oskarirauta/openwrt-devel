include $(TOPDIR)/rules.mk

PKG_NAME:=freetype-dev
PKG_SRC:=freetype
PKG_PATH:=feeds/packages/freetype

include ../header-package.mk
include $(INCLUDE_DIR)/package.mk

define Package/freetype-dev
  SECTION:=Devel
  CATEGORY:=Development
  SUBMENU:=Development headers
  TITLE:=freetype headers
  DEPENDS:=+libfreetype
endef

define Package/freetype-dev-static-libraries
  SECTION:=Devel
  CATEGORY:=Development
  SUBMENU:=Development headers
  TITLE:=freetype static libraries
  DEPENDS:=+libubus
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

SO_VERS:=```readlink "$(PKG_INSTALL_DIR)/usr/lib/libfreetype.so"```

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/lib
	cp $(PKG_INSTALL_DIR)/usr/lib/libfreetype.a $(1)/usr/lib/
endef

define Package/freetype-dev/install
	$(INSTALL_DIR) $(1)/usr/include $(1)/lib $(1)/usr/lib/pkgconfig/
	cp $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/** $(1)/usr/lib/pkgconfig/
	cp -r $(PKG_INSTALL_DIR)/usr/include/** $(1)/usr/include
	ln -s $(SO_VERS) $(1)/usr/lib/libfreetype.so
endef

define Package/freetype-dev-static-libraries/install
	$(INSTALL_DIR) $(1)/usr/lib
	cp $(PKG_INSTALL_DIR)/usr/lib/libfreetype.a $(1)/usr/lib/
endef

$(eval $(call BuildPackage,freetype-dev))
$(eval $(call BuildPackage,freetype-dev-static-libraries))
