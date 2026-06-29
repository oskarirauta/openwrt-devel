include $(TOPDIR)/rules.mk

PKG_NAME:=libdrm-dev
PKG_SRC:=libdrm
PKG_PATH:=feeds/packages/libdrm

include ../header-package.mk
include $(INCLUDE_DIR)/package.mk

define Package/libdrm-dev
  SECTION:=Devel
  CATEGORY:=Development
  SUBMENU:=Development headers
  TITLE:=libdrm headers
  DEPENDS:=+libdrm
endef

define Package/libdrm-dev-static-libraries
  SECTION:=Devel
  CATEGORY:=Development
  SUBMENU:=Development headers
  TITLE:=libdrm static libraries
  DEPENDS:=+libdrm-dev
endef

define Package/libdrm-amdgpu-dev
  SECTION:=Devel
  CATEGORY:=Development
  SUBMENU:=Development headers
  TITLE:=libdrm-amdgpu headers
  DEPENDS:=+libdrm-dev +libdrm-amdgpu
endef

define Package/libdrm-amdgpu-dev-static-libraries
  SECTION:=Devel
  CATEGORY:=Development
  SUBMENU:=Development headers
  TITLE:=libdrm-amdgpu static libraries
  DEPENDS:=+libdrm-amdgpu-dev
endef

define Package/libdrm-intel-dev
  SECTION:=Devel
  CATEGORY:=Development
  SUBMENU:=Development headers
  TITLE:=libdrm-intel headers
  DEPENDS:=+libdrm-dev +libdrm-intel
endef

define Package/libdrm-intel-dev-static-libraries
  SECTION:=Devel
  CATEGORY:=Development
  SUBMENU:=Development headers
  TITLE:=libdrm-intel static libraries
  DEPENDS:=+libdrm-intel-dev
endef

define Package/libdrm-nouveau-dev
  SECTION:=Devel
  CATEGORY:=Development
  SUBMENU:=Development headers
  TITLE:=libdrm-nouveau headers
  DEPENDS:=+libdrm-dev +libdrm-nouveau
endef

define Package/libdrm-nouveau-dev-static-libraries
  SECTION:=Devel
  CATEGORY:=Development
  SUBMENU:=Development headers
  TITLE:=libdrm-nouveau static libraries
  DEPENDS:=+libdrm-nouveau-dev
endef

define Package/libdrm-radeon-dev
  SECTION:=Devel
  CATEGORY:=Development
  SUBMENU:=Development headers
  TITLE:=libdrm-radeon headers
  DEPENDS:=+libdrm-dev +libdrm-radeon
endef

define Package/libdrm-radeon-dev-static-libraries
  SECTION:=Devel
  CATEGORY:=Development
  SUBMENU:=Development headers
  TITLE:=libdrm-radeon static libraries
  DEPENDS:=+libdrm-radeon-dev
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/libdrm-dev/install
	$(INSTALL_DIR) $(1)/usr/include/libdrm $(1)/usr/lib $(1)/usr/lib/pkgconfig
	cp -r $(PKG_INSTALL_DIR)/usr/include/** $(1)/usr/include/
	cp $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/libdrm.pc $(1)/usr/lib/pkgconfig/
	ln -s libdrm.so.2 $(1)/usr/lib/libdrm.so
endef

define Package/libdrm-dev-static-libraries/install
	$(INSTALL_DIR) $(1)/usr/lib
	cp $(PKG_INSTALL_DIR)/usr/lib/libdrm.a $(1)/usr/lib/
endef

define Package/libdrm-amdgpu-dev/install
	$(INSTALL_DIR) $(1)/usr/lib $(1)/usr/lib/pkgconfig
	cp $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/libdrm_amdgpu.pc $(1)/usr/lib/pkgconfig/
	ln -s libdrm_amdgpu.so.1 $(1)/usr/lib/libdrm_amdgpu.so
endef

define Package/libdrm-amdgpu-dev-static-libraries/install
	$(INSTALL_DIR) $(1)/usr/lib
	cp $(PKG_INSTALL_DIR)/usr/lib/libdrm_amdgpu.a $(1)/usr/lib/
endef

define Package/libdrm-intel-dev/install
	$(INSTALL_DIR) $(1)/usr/lib $(1)/usr/lib/pkgconfig
	cp $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/libdrm_intel.pc $(1)/usr/lib/pkgconfig/
	ln -s libdrm_intel.so.1 $(1)/usr/lib/libdrm_intel.so
endef

define Package/libdrm-intel-dev-static-libraries/install
	$(INSTALL_DIR) $(1)/usr/lib
	cp $(PKG_INSTALL_DIR)/usr/lib/libdrm_intel.a $(1)/usr/lib/
endef

define Package/libdrm-nouveau-dev/install
	$(INSTALL_DIR) $(1)/usr/lib $(1)/usr/lib/pkgconfig
	cp $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/libdrm_nouveau.pc $(1)/usr/lib/pkgconfig/
	ln -s libdrm_nouveau.so.2 $(1)/usr/lib/libdrm_nouveau.so
endef

define Package/libdrm-nouveau-dev-static-libraries/install
	$(INSTALL_DIR) $(1)/usr/lib
	cp $(PKG_INSTALL_DIR)/usr/lib/libdrm_nouveau.a $(1)/usr/lib/
endef

define Package/libdrm-radeon-dev/install
	$(INSTALL_DIR) $(1)/usr/lib $(1)/usr/lib/pkgconfig
	cp $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/libdrm_radeon.pc $(1)/usr/lib/pkgconfig/
	ln -s libdrm_radeon.so.1 $(1)/usr/lib/libdrm_radeon.so
endef

define Package/libdrm-radeon-dev-static-libraries/install
	$(INSTALL_DIR) $(1)/usr/lib
	cp $(PKG_INSTALL_DIR)/usr/lib/libdrm_radeon.a $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libdrm-dev))
$(eval $(call BuildPackage,libdrm-dev-static-libraries))
$(eval $(call BuildPackage,libdrm-amdgpu-dev))
$(eval $(call BuildPackage,libdrm-amdgpu-dev-static-libraries))
$(eval $(call BuildPackage,libdrm-intel-dev))
$(eval $(call BuildPackage,libdrm-intel-dev-static-libraries))
$(eval $(call BuildPackage,libdrm-nouveau-dev))
$(eval $(call BuildPackage,libdrm-nouveau-dev-static-libraries))
$(eval $(call BuildPackage,libdrm-radeon-dev))
$(eval $(call BuildPackage,libdrm-radeon-dev-static-libraries))
