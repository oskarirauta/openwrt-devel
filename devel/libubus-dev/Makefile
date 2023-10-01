include $(TOPDIR)/rules.mk

PKG_SRC:=ubus
PKG_PATH:=system/ubus
PKG_NAME:=libubus-dev

include ../header-package.mk
include $(INCLUDE_DIR)/package.mk

define Package/libubus-dev
  SECTION:=Devel
  CATEGORY:=Development
  SUBMENU:=Development headers
  TITLE:=libubus headers
  DEPENDS:=+libubus
endef

define Package/libubus-dev-static-libraries
  SECTION:=Devel
  CATEGORY:=Development
  SUBMENU:=Development headers
  TITLE:=libubus static libraries
  DEPENDS:=+libubus
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/libubus-dev/install
	$(INSTALL_DIR) $(1)/usr/include $(1)/lib
	cp -r $(PKG_INSTALL_DIR)/usr/include/** $(1)/usr/include
	ln -s libubus.so.$(PKG_SRC_SHORT_DATE) $(1)/lib/libubus.so
endef

define Package/libubus-dev-static-libraries/install
	$(INSTALL_DIR) $(1)/usr/lib
	cp $(PKG_SRC_DIR)/libubusd_library.a $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libubus-dev))
$(eval $(call BuildPackage,libubus-dev-static-libraries))
