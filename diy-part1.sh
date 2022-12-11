#修改feeds.conf.default
sed -i 's/fw876/kjrzxu/' openwrt/feeds.conf.default
sed -i '/^#.*helloworld/s/^#//' openwrt/feeds.conf.default
sed -i '/helloworld/a src-git package https://github.com/kjrzxu/package.git' openwrt/feeds.conf.default

