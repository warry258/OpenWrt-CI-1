#修改feeds.conf.default
sed -i 's/fw876/kjrzxu/' openwrt/feeds.conf.default
sed -i '/^#.*helloworld/s/^#//' openwrt/feeds.conf.default
sed -i '/helloworld/a src-git package https://github.com/kjrzxu/package.git' openwrt/feeds.conf.default

#修改autosamba
sed -i 's/samba4/samba/g' openwrt/package/lean/autosamba/Makefile
sed -i 's/samba4/samba/g' openwrt/package/lean/autosamba/files/20-smb

#修改automount
rm -rf openwrt/package/lean/automount/files/15-automount
cp build/15-automount openwrt/package/lean/automount/files
