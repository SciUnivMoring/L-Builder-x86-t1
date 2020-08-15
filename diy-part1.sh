#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
#git clone https://github.com/LGA1150/openwrt-sysuh3c.git package/openwrt-sysuh3c
sed -i '$a src-git openwrt_sysuh3c https://github.com/LGA1150/openwrt-sysuh3c' feeds.conf.default
./scripts/feeds update -a
./scripts/feeds install -a
