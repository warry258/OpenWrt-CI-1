#!/bin/sh

#修改feeds.conf.default
sed -i '/^#.*helloworld/s/^#//' openwrt/feeds.conf.default
sed -i '/helloworld/a src-git package https://github.com/kjrzxu/package.git' openwrt/feeds.conf.default

#修改autosamba
sed -i 's/samba4/samba/g' openwrt/package/lean/autosamba/Makefile
sed -i 's/samba4/samba/g' openwrt/package/lean/autosamba/files/20-smb

#替换automount
#rm -rf openwrt/package/lean/automount/files/15-automount
#cp -r build/15-automount openwrt/package/lean/automount/files

#修改默认插件
sed -i 's/luci-app-filetransfer //' openwrt/include/target.mk
sed -i '/ca-certificates/s/$/ \\/' openwrt/include/target.mk
sed -i '/ca-certificates/s/$/\n/' openwrt/include/target.mk
sed -i '/ca-certificates/r build/target.txt' openwrt/include/target.mk
