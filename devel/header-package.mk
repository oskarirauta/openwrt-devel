PKG_NAME?=$(PKG_SRC)-dev
PKG_RELEASE?=1
PKG_MAKEFILE_DIR?=$(TOPDIR)/package/$(PKG_PATH)
PKG_SRC_VERSION?=$(shell grep -E "PKG_VERSION:=" $(PKG_MAKEFILE_DIR)/Makefile | head -n 1 | cut -d "=" -f 2)
PKG_SRC_DATE?=$(shell grep -E "PKG_SOURCE_DATE:=" $(PKG_MAKEFILE_DIR)/Makefile | head -n 1 | cut -d "=" -f 2)
PKG_SRC_SHORT_DATE?=$(shell grep -E "PKG_SOURCE_DATE:=" $(PKG_MAKEFILE_DIR)/Makefile | head -n 1 | cut -d "=" -f 2 | sed 's/-//g')
PKG_SRC_COMMIT?=$(shell grep -E "PKG_SOURCE_VERSION:=" $(PKG_MAKEFILE_DIR)/Makefile | head -n 1 | cut -d "=" -f 2)
PKG_SRC_SHORT_COMMIT?=$(shell grep -E "PKG_SOURCE_VERSION:=" $(PKG_MAKEFILE_DIR)/Makefile | head -n 1 | cut -d "=" -f 2 | head -c 8)

ifneq ($(PKG_SRC_COMMIT),)
  ifeq ($(PKG_SRC_VERSION),)
    PKG_SRC_VERSION:=$(if $(PKG_SRC_DATE),$(PKG_SRC_DATE)-)$(PKG_SRC_SHORT_COMMIT)
  endif
endif

PKG_SRC_DIR?=$(BUILD_DIR)/$(PKG_SRC)$(if $(PKG_VERSION),-$(PKG_VERSION))
PKG_SRC_INSTALL_DIR?=$(PKG_SRC_DIR)/ipkg-install
PKG_VERSION?=$(PKG_SRC_VERSION)
PKG_SOURCE_DATE?=$(PKG_SRC_DATE)
PKG_SOURCE_VERSION?=$(PKG_SRC_COMMIT)
PKG_INSTALL_DIR:=$(PKG_SRC_INSTALL_DIR)
