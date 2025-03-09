include $(TOPDIR)/rules.mk

include ../../../packages/lang/perl/perlver.mk

PKG_NAME:=perl-pods
PKG_VERSION:=$(PERL_VERSION)
PKG_RELEASE:=1

PKG_BUILD_DEPENDS:=perl
PERL_SRC_DIR:=$(BUILD_DIR)/perl/perl-$(PERL_VERSION)

include $(INCLUDE_DIR)/package.mk

define Package/perl-pods
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=perl pods
  DEPENDS:=perl
endef

define Package/perl-pods/description
  This package contains perl pod files
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/perl-pods/install
	$(INSTALL_DIR) $(1)/usr/lib/perl$(PERL_MAJOR)/$(PERL_VERSION)/pods
	$(INSTALL_DATA) $(PERL_SRC_DIR)/pod/*.pod $(1)/usr/lib/perl$(PERL_MAJOR)/$(PERL_VERSION)/pods/
endef

$(eval $(call BuildPackage,perl-pods))
