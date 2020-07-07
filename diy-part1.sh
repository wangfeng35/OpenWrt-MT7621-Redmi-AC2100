#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
# 增加lean的ssr-plus
echo "src-git helloworld https://github.com/fw876/helloworld" >> feeds.conf.default

# 增加Lienol大神软件包 passwall及其依赖
echo "src-git lienol https://github.com/Lienol/openwrt-package" >> feeds.conf.default
# 增加Kenzok8的软件库 包含passwall及其依赖
#echo "src-git small https://github.com/kenzok8/small" >> feeds.conf.default
# echo "src-git kenzo https://github.com/kenzok8/openwrt-packages" >> feeds.conf.default
# ./scripts/feeds update -a && ./scripts/feeds install -a
