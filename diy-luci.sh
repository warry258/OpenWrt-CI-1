#!/bin/sh

#添加界面主页IPTV分类和顺序
sed -i '/"VPN"/a entry({"admin", "iptv"}, firstchild(), _("IPTV"), 45).index = true' openwrt/feeds/luci/modules/luci-mod-admin-full/luasrc/controller/admin/index.lua
sed -i '/"VPN"/s/$/\n/' openwrt/feeds/luci/modules/luci-mod-admin-full/luasrc/controller/admin/index.lua
sed -i '/"IPTV"/s/^/\t/' openwrt/feeds/luci/modules/luci-mod-admin-full/luasrc/controller/admin/index.lua

# 把bootstrap替换成argon为源码必选主题
sed -i 's/bootstrap/argon/ig' openwrt/feeds/luci/collections/luci/Makefile

#修改界面主页分类和顺序

#修改插件名称并调整顺序
sed -i 's/"ShadowSocksR Plus+"/"科学上网Plus"/g' `egrep "ShadowSocksR Plus+" -rl openwrt/feeds`
sed -i 's/"Internet Access Schedule Control"/"时间控制"/g' `egrep "Internet Access Schedule Control" -rl openwrt/feeds`
sed -i 's/"ADBYBY Plus +"/"广告屏蔽Plus"/g' `egrep "ADBYBY Plus +" -rl openwrt/feeds`
sed -i 's/"AliyunDrive WebDAV"/"阿里云盘"/g' `egrep "AliyunDrive WebDAV" -rl openwrt/feeds`
sed -i 's/"IP/MAC Binding"/"MAC绑定"/g' `egrep "IP/MAC Binding" -rl openwrt/feeds`
sed -i 's/"BaiduPCS Web"/"百度网盘"/g' `egrep "BaiduPCS Web" -rl openwrt/feeds`
sed -i 's/"Dynamic DNS"/"动态 DNS"/g' `egrep "Dynamic DNS" -rl openwrt/feeds`
sed -i 's/"EASY MESH"/"简单MESH"/g' `egrep "EASY MESH" -rl openwrt/feeds`
sed -i 's/"Socat"/"端口转发"/g' `egrep "Socat" -rl openwrt/feeds`
sed -i 's/"TTYD Terminal"/"命令终端"/g' `egrep "TTYD Terminal" -rl openwrt/feeds`
sed -i 's/"Turbo ACC Center"/"网络加速"/g' `egrep "Turbo ACC Center" -rl openwrt/feeds`
sed -i 's/"udpxy"/"IPTV单播"/g' `egrep "udpxy" -rl openwrt/feeds`
sed -i 's/"uHTTPd"/"uhttpd管理"/g' `egrep "uHTTPd" -rl openwrt/feeds`
sed -i 's/"Unblock Netease Music"/"解锁网易歌曲"/g' `egrep "Unblock Netease Music" -rl openwrt/feeds`
sed -i 's/"UPnP"/"UPNP端口转发"/g' `egrep "UPnP" -rl openwrt/feeds`
sed -i 's/"USB Printer Server"/"USB 打印"/g' `egrep "USB Printer Server" -rl openwrt/feeds`
sed -i 's/"KMS Server"/"KMS 激活"/g' `egrep "KMS Server" -rl openwrt/feeds`
sed -i 's/"FTP Server"/"FTP服务器"/g' `egrep "FTP Server" -rl openwrt/feeds`
#修改插件配置文件