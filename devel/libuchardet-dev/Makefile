include $(TOPDIR)/rules.mk

PKG_NAME:=libuchardet-dev
PKG_VERSION:=0.0.8
PKG_RELEASE:=1

PKG_BUILD_DEPENDS:=uchardet

PKG_SRC_DIR:=$(BUILD_DIR)/uchardet-$(PKG_VERSION)
PKG_INSTALL_DIR:=$(PKG_SRC_DIR)/ipkg-install

include $(INCLUDE_DIR)/package.mk

define Package/libuchardet-dev
  SECTION:=Devel
  CATEGORY:=Development
  SUBMENU:=Development headers
  TITLE:=libuchardet headers
  DEPENDS:=+libuchardet
endef

define Package/libuchardet-dev-static-libraries
  SECTION:=Devel
  CATEGORY:=Development
  SUBMENU:=Development headers
  TITLE:=libuchardet static libraries
  DEPENDS:=+libuchardet-dev
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/libuchardet-dev/install
	$(INSTALL_DIR) $(1)/usr/include/uchardet $(1)/usr/lib $(1)/usr/lib/pkgconfig $(1)/usr/lib/cmake/uchardet
	cp $(PKG_INSTALL_DIR)/usr/include/uchardet/uchardet.h $(1)/usr/include/uchardet/
	ln -s uchardet/uchardet.h $(1)/usr/include/uchardet.h
	cp $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/uchardet.pc $(1)/usr/lib/pkgconfig/
	cp $(PKG_INSTALL_DIR)/usr/lib/cmake/uchardet/*.cmake $(1)/usr/lib/cmake/uchardet/
	ln -s libuchardet.so.0.0.8 $(1)/usr/lib/libuchardet.so
endef

define Package/libuchardet-dev-static-libraries/install
	$(INSTALL_DIR) $(1)/usr/lib
	cp $(PKG_INSTALL_DIR)/usr/lib/libuchardet.a $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libuchardet-dev))
$(eval $(call BuildPackage,libuchardet-dev-static-libraries))
