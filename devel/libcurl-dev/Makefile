include $(TOPDIR)/rules.mk

PKG_NAME:=libcurl-dev
PKG_SRC:=curl
PKG_PATH:=feeds/packages/curl

include ../header-package.mk
include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  SECTION:=Devel
  CATEGORY:=Development
  SUBMENU:=Development headers
  TITLE:=libcurl headers
  DEPENDS:=+libcurl
endef

define Package/$(PKG_NAME)-static-libraries
  SECTION:=Devel
  CATEGORY:=Development
  SUBMENU:=Development headers
  TITLE:=libcurl static libraries
  DEPENDS:=+libcurl +$(PKG_NAME)
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

SO_VERS:=```readlink "$(PKG_INSTALL_DIR)/usr/lib/libcurl.so"```

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/include/curl $(1)/usr/lib $(1)/usr/lib/pkgconfig
	cp $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/** $(1)/usr/lib/pkgconfig/
	cp -r $(PKG_INSTALL_DIR)/usr/include/curl/** $(1)/usr/include/curl/
	ln -s $(SO_VERS) $(1)/usr/lib/libcurl.so
endef

define Package/$(PKG_NAME)-static-libraries/install
	$(INSTALL_DIR) $(1)/usr/lib
	cp $(PKG_INSTALL_DIR)/usr/lib/libcurl.a $(1)/usr/lib/
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
$(eval $(call BuildPackage,$(PKG_NAME)-static-libraries))
