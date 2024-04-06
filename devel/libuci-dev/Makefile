include $(TOPDIR)/rules.mk

PKG_SRC:=uci
PKG_PATH:=system/uci
PKG_NAME:=libuci-dev

PKG_BUILD_DEPENDS:=uci ubox

include ../header-package.mk
include $(INCLUDE_DIR)/package.mk

PKG_SRC_DIR:=$(BUILD_DIR)/$(PKG_SRC)$(if $(PKG_VERSION),-$(PKG_VERSION))
PKG_SRC_INSTALL_DIR:=$(PKG_SRC_DIR)/ipkg-install
PKG_INSTALL_DIR:=$(PKG_SRC_DIR)/ipkg-install

define Package/libuci-dev
  SECTION:=Devel
  CATEGORY:=Development
  SUBMENU:=Development headers
  TITLE:=libuci headers
  DEPENDS:=+libuci +libubox
endef

define Package/libuci-dev-static-libraries
  SECTION:=Devel
  CATEGORY:=Development
  SUBMENU:=Development headers
  TITLE:=libuci static libraries
  DEPENDS:=+libuci +libubox
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/libuci-dev/install
	$(INSTALL_DIR) $(1)/usr/include
	cp -r $(PKG_INSTALL_DIR)/usr/include/** $(1)/usr/include
endef

define Package/libuci-dev-static-libraries/install
	$(INSTALL_DIR) $(1)/usr/lib
	cp $(PKG_SRC_DIR)/{libuci.a,libucimap.a} $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libuci-dev))
$(eval $(call BuildPackage,libuci-dev-static-libraries))
