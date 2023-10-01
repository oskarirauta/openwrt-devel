include $(TOPDIR)/rules.mk

PKG_SRC:=libubox
PKG_PATH:=libs/libubox

include ../header-package.mk
include $(INCLUDE_DIR)/package.mk

define Package/libubox-dev
  SECTION:=Devel
  CATEGORY:=Development
  SUBMENU:=Development headers
  TITLE:=libubox headers
  DEPENDS:=+libubox +libjson-script +libblobmsg-json
endef

define Package/libubox-dev-static-libraries
  SECTION:=Devel
  CATEGORY:=Development
  SUBMENU:=Development headers
  TITLE:=libubox static libraries
  DEPENDS:=+libubox +libjson-script +libblobmsg-json
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/libubox-dev/install
	$(INSTALL_DIR) $(1)/usr/include/libubox $(1)/lib
	cp -r $(PKG_INSTALL_DIR)/usr/include/libubox/** $(1)/usr/include/libubox/
	ln -s libblobmsg_json.so.$(PKG_SRC_SHORT_DATE) $(1)/lib/libblobmsg_json.so
	ln -s libjson_script.so.$(PKG_SRC_SHORT_DATE) $(1)/lib/libjson_script.so
	ln -s libubox.so.$(PKG_SRC_SHORT_DATE) $(1)/lib/libubox.so
endef

define Package/libubox-dev-static-libraries/install
	$(INSTALL_DIR) $(1)/usr/lib
	cp $(PKG_INSTALL_DIR)/usr/lib/{libblobmsg_json.a,libubox.a} $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libubox-dev))
$(eval $(call BuildPackage,libubox-dev-static-libraries))
