include $(TOPDIR)/rules.mk

PKG_NAME:=openssl-dev
PKG_SRC:=openssl
PKG_VERSION:=$(grep -E "PKG_VERSION:=" $(TOP_DIR)/packages/libs/$(PKG_SRC)/Makefile | head -n 1 | cut -d "=" -f 2)
PKG_RELEASE:=1

PKG_MAINTAINER:=Oskari Rauta <oskari.rauta@gmail.com>

#PKG_BUILD_DEPENDS:=openssl
PKG_SRC_DIR:=$(BUILD_DIR)/$(PKG_SRC)$(if $(PKG_VERSION),-$(PKG_VERSION))
PKG_INSTALL_DIR:=$(PKG_SRC_DIR)/ipkg-install

include $(INCLUDE_DIR)/package.mk

define Package/openssl-dev
  SECTION:=Devel
  CATEGORY:=Development
  SUBMENU:=Development headers
  TITLE:=OpenSSL headers
#  DEPENDS:=+libopenssl
endef

define Build/Configure
	grep -E 'PKG_VERSION:=' $(TOP_DIR)/packages/libs/$(PKG_SRC)/Makefile | head -n 1 | cut -d '=' -f 2
	echo "package src = $(PKG_SRC)"
	echo "package version = $(grep -E 'PKG_VERSION:=' $(TOP_DIR)/packages/libs/$(PKG_SRC)/Makefile | head -n 1 | cut -d '=' -f 2)"
	echo "package dir = $(TOP_DIR)/packages/libs/$(PKG_SRC)"
	echo "source version = $(PKG_VERSION)"
	echo "source dir = $(BUILD_DIR)/$(PKG_SRC)$(if $(PKG_VERSION),-$(PKG_VERSION))"
	echo "install dir = $(PKG_INSTALL_DIR)"
endef

define Build/Compile
endef

define Package/openssl-dev/install
	$(INSTALL_DIR) $(1)/usr/include/openssl $(1)/usr/lib $(1)/usr/lib/pkgconfig
	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/lib/{libcrypto.a,libssl.a} $(1)/usr/lib/
	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/** $(1)/usr/lib/pkgconfig/
	cp -r $(PKG_INSTALL_DIR)/usr/include/openssl/** $(1)/usr/include/openssl/
	ln -s libcrypto.so.3 $(1)/usr/lib/libcrypto.so
	ln -s libssl.so.3 $(1)/usr/lib/libssl.so
endef

$(eval $(call BuildPackage,openssl-dev))
