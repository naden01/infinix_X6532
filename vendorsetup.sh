#!/bin/bash

#
#	This file is part of the OrangeFox Recovery Project
# 	Copyright (C) 2025 The OrangeFox Recovery Project
#
#	OrangeFox is free software: you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation, either version 3 of the License, or
#	any later version.
#
#	OrangeFox is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#
# 	This software is released under GPL version 3 or any later version.
#	See <http://www.gnu.org/licenses/>.
#
# 	Please maintain this if you use this script or any part of it
#

#device
export FOX_TARGET_DEVICES=X6532
export TARGET_DEVICE_ALT=X6532

# other
export FOX_VIRTUAL_AB_DEVICE=1
export FOX_ENABLE_APP_MANAGER=1
export FOX_VENDOR_BOOT_RECOVERY=1
export FOX_RECOVERY_VENDOR_BOOT_PARTITION="/dev/block/by-name/vendor_boot"
export FOX_RECOVERY_SYSTEM_PARTITION="/dev/block/mapper/system"
export FOX_RECOVERY_VENDOR_PARTITION="/dev/block/mapper/vendor"
export FOX_USE_XZ_UTILS=1
export FOX_USE_BASH_SHELL=1
export FOX_ASH_IS_BASH=1
export FOX_USE_TAR_BINARY=1
export FOX_USE_LZ4_BINARY=1
export FOX_USE_SED_BINARY=1
export FOX_USE_ZSTD_BINARY=1
export FOX_USE_NANO_EDITOR=1
export FOX_USE_UPDATED_MAGISKBOOT=1
export FOX_DELETE_AROMAFM=1
export FOX_USE_DATE_BINARY=1
export FOX_BUILD_TYPE="stable"

# KSU, etc.
	export FOX_ENABLE_KERNELSU_SUPPORT=1
	export FOX_ENABLE_KERNELSU_NEXT_SUPPORT=1
	export FOX_ENABLE_SUKISU_SUPPORT=1
  
# maintainer 
export OF_MAINTAINER_AVATAR="$(gettop)/device/infinix/X6532/maintainer_avatar.png"
cp "${OF_MAINTAINER_AVATAR}" "$(gettop)/bootable/recovery/gui/theme/portrait_hdpi/images/Default/About/maintainer.png"

# Important build settings
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL="C"

# patches
if [ ! -d ${CCACHE_DIR} ];
then
  echo "CCACHE Directory/Partition is not mounted at \"${CCACHE_DIR}\""
  echo "Please edit the CCACHE_DIR build variable or mount the directory."
fi
