#更改内核版本5.4为5.10
sed -i 's/PATCHVER:=5.4/PATCHVER:=5.10/' openwrt/target/linux/ramips/Makefile

#添加menuconfig默认插件

#修改界面主页分类和顺序


#添加界面主页分类和顺序
sed -i '/"vpn"/a entry({"admin", "iptv"}, firstchild(), _("IPTV"), 45).index = true' openwrt/feeds/luci/modules/luci-mod-admin-full/luasrc/controller/admin/index.lua

#替换极路由B70的hant驱动文件
rm -rf openwrt/target/linux/ramips/dts/mt7621_hiwifi_hc5962.dts
rm -rf openwrt/linux/ramips/mt7621/base-files/etc/board.d/02_network
cp build/LEDE-hnat-02network-dst/mt7621_hiwifi_hc5962.dts openwrt/target/linux/ramips/dts
cp build/LEDE-hnat-02network-dst/02_network openwrt/target/linux/ramips/mt7621/base-files/etc/board.d

#修改插件名称并调整顺序
sed -i 's/PATCHVER:=5.4/PATCHVER:=5.10/' openwrt/lede/target/linux/ramips/Makefile

#修改插件配置文件