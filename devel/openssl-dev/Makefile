include $(TOPDIR)/rules.mk

PKG_SRC:=openssl
PKG_PATH:=libs/openssl

include ../header-package.mk
include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  SECTION:=Devel
  CATEGORY:=Development
  SUBMENU:=Development headers
  TITLE:=OpenSSL headers
  DEPENDS:=+libopenssl
endef

define Package/$(PKG_NAME)-static-libraries
  SECTION:=Devel
  CATEGORY:=Development
  SUBMENU:=Development headers
  TITLE:=OpenSSL static libraries
  DEPENDS:=+libopenssl +$(PKG_NAME)
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/include/openssl $(1)/usr/lib $(1)/usr/lib/pkgconfig
	cp $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/** $(1)/usr/lib/pkgconfig/
	cp -r $(PKG_INSTALL_DIR)/usr/include/openssl/** $(1)/usr/include/openssl/
	ln -s libcrypto.so.3 $(1)/usr/lib/libcrypto.so
	ln -s libssl.so.3 $(1)/usr/lib/libssl.so
endef

define Package/$(PKG_NAME)-static-libraries/install
	$(INSTALL_DIR) $(1)/usr/lib
	cp $(PKG_INSTALL_DIR)/usr/lib/{libcrypto.a,libssl.a} $(1)/usr/lib/
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
$(eval $(call BuildPackage,$(PKG_NAME)-static-libraries))
