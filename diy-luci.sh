#!/bin/sh

#添加界面主页IPTV分类和顺序
sed -i '/"VPN"/a entry({"admin", "iptv"}, firstchild(), _("IPTV"), 45).index = true' openwrt/feeds/luci/modules/luci-mod-admin-full/luasrc/controller/admin/index.lua
sed -i '/"VPN"/s/$/\n/' openwrt/feeds/luci/modules/luci-mod-admin-full/luasrc/controller/admin/index.lua
sed -i '/"IPTV"/s/^/\t/' openwrt/feeds/luci/modules/luci-mod-admin-full/luasrc/controller/admin/index.lua

# 把bootstrap替换成argon为源码必选主题
sed -i 's/bootstrap/argon/ig' openwrt/feeds/luci/collections/luci/Makefile

#修改界面主页分类和顺序

#修改插件名称并调整顺序

#修改插件配置文件