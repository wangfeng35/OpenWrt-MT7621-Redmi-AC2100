#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

# Modify default IP
sed -i 's/192.168.3.1/192.168.1.1/g' package/base-files/files/bin/config_generate

# echo '添加Clash'
# git clone https://github.com/frainzy1477/luci-app-clash package/lean/luci-app-clash
# echo 'CONFIG_PACKAGE_luci-app-clash=y' >> .config

# .config文件已经包含了
# echo '添加Passwall'
# echo 'CONFIG_PACKAGE_luci-app-passwall=y' >> .config
# echo 'CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Shadowsocks=y' >> .config
# echo 'CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Trojan=y' >> .config
# echo 'CONFIG_PACKAGE_luci-app-passwall_INCLUDE_simple-obfs=n' >> .config
# echo 'CONFIG_PACKAGE_luci-app-passwall_INCLUDE_v2ray-plugin=n' >> .config
# echo 'CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Brook=n' >> .config
# echo 'CONFIG_PACKAGE_luci-app-passwall_INCLUDE_kcptun=n' >> .config
# echo 'CONFIG_PACKAGE_luci-i18n-passwall-zh-cn=y'  >> .config

# echo '添加luci-app-vssr'
# git clone https://github.com/jerrykuku/luci-app-vssr.git package/lean/luci-app-vssr
# git clone https://github.com/jerrykuku/lua-maxminddb.git package/lean/lua-maxminddb
# echo 'CONFIG_PACKAGE_luci-app-vssr=y' >> .config
# echo 'CONFIG_PACKAGE_luci-app-vssr_INCLUDE_V2ray=y' >> .config
# echo 'CONFIG_PACKAGE_luci-app-vssr_INCLUDE_Trojan=y' >> .config
# echo 'CONFIG_PACKAGE_luci-app-vssr_INCLUDE_ShadowsocksR_Server=y' >> .config
# echo 'CONFIG_PACKAGE_luci-app-vssr_INCLUDE_ShadowsocksR_Socks=y' >> .config
# echo 'CONFIG_PACKAGE_luci-i18n-vssr-zh-cn=y'  >> .config
