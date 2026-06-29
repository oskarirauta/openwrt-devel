include $(TOPDIR)/rules.mk

PKG_NAME:=libplacebo-dev
PKG_VERSION:=7.360.1
PKG_RELEASE:=1

PKG_BUILD_DEPENDS:=libplacebo

PKG_SRC_DIR:=$(BUILD_DIR)/libplacebo-v$(PKG_VERSION)
PKG_INSTALL_DIR:=$(PKG_SRC_DIR)/ipkg-install

include $(INCLUDE_DIR)/package.mk

define Package/libplacebo-dev
  SECTION:=Devel
  CATEGORY:=Development
  SUBMENU:=Development headers
  TITLE:=libplacebo headers
  DEPENDS:=+libplacebo
endef

define Package/libplacebo-dev-static-libraries
  SECTION:=Devel
  CATEGORY:=Development
  SUBMENU:=Development headers
  TITLE:=libplacebo static libraries
  DEPENDS:=+libplacebo-dev
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/libplacebo-dev/install
	$(INSTALL_DIR) \
		$(1)/usr/include/libplacebo \
		$(1)/usr/include/libplacebo/shaders \
		$(1)/usr/include/libplacebo/utils \
		$(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/include/libplacebo/*.h $(1)/usr/include/libplacebo/
	$(CP) $(PKG_INSTALL_DIR)/usr/include/libplacebo/shaders/*.h $(1)/usr/include/libplacebo/shaders/
	$(CP) $(PKG_INSTALL_DIR)/usr/include/libplacebo/utils/*.h $(1)/usr/include/libplacebo/utils/
	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/libplacebo.pc $(1)/usr/lib/pkgconfig/
endef

define Package/libplacebo-dev-static-libraries/install
	$(INSTALL_DIR) $(1)/usr/lib
	cp $(PKG_INSTALL_DIR)/usr/lib/libplacebo.a $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libplacebo-dev))
$(eval $(call BuildPackage,libplacebo-dev-static-libraries))
