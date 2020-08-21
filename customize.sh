#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
sed -i 's/192.168.1.1/192.168.5.1/g' openwrt/package/base-files/files/bin/config_generate

# Add luci-theme-argon
git clone --depth=1 -b 18.06 https://github.com/jerrykuku/luci-theme-argon
rm -rf ../lean/luci-theme-argon

# Add luci-theme-opentomcat
svn co https://github.com/project-openwrt/openwrt/trunk/package/ctcgfw/luci-theme-opentomcat ../luci-theme-opentomcat

# Add Lienol's Packages
git clone --depth=1 https://github.com/Lienol/openwrt-package

# Add OpenClash
git clone --depth=1 -b master https://github.com/vernesong/OpenClash

# Add smartdns
svn co https://github.com/project-openwrt/openwrt/trunk/package/ntlf9t/smartdns ../smartdns
svn co https://github.com/project-openwrt/openwrt/trunk/package/ntlf9t/luci-app-smartdns ../luci-app-smartdns

# Add luci-app-adguardhome
svn co https://github.com/project-openwrt/openwrt/trunk/package/ctcgfw/luci-app-adguardhome
svn co https://github.com/project-openwrt/openwrt/trunk/package/ntlf9t/AdGuardHome