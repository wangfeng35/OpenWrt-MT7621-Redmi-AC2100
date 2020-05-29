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
sed -i 's/192.168.2.1/192.168.50.5/g' package/base-files/files/bin/config_generate

echo '添加Clash'
git clone https://github.com/frainzy1477/luci-app-clash package/lean/luci-app-clash
echo 'CONFIG_PACKAGE_luci-app-clash=y' >> .config
