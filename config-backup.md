config备份
```bash
# 机型设置
CONFIG_TARGET_ramips=y
CONFIG_TARGET_ramips_mt7621=y
CONFIG_TARGET_ramips_mt7621_DEVICE_hiwifi_hc5962=y
CONFIG_TARGET_IMAGES_GZIP=y
# WIFI驱动
CONFIG_PACKAGE_kmod-mt7603=y
CONFIG_PACKAGE_kmod-mt76x2=y
CONFIG_PACKAGE_hostapd-common=y
CONFIG_PACKAGE_wpad-openssl=y
# USB驱动
CONFIG_PACKAGE_kmod-usb3=y
CONFIG_PACKAGE_kmod-usb-storage=y
CONFIG_PACKAGE_kmod-usb-storage-extras=y
CONFIG_PACKAGE_kmod-fs-vfat=y
CONFIG_PACKAGE_kmod-fs-ext4=y
CONFIG_PACKAGE_ntfs-3g=y
CONFIG_PACKAGE_NTFS-3G_HAS_PROBE=y
# DNS-IPV6驱动
CONFIG_PACKAGE_dnsmasq-full=y
#CONFIG_PACKAGE_dnsmasq_full_dhcp is not set
CONFIG_PACKAGE_dnsmasq_full_dhcpv6=y
#CONFIG_PACKAGE_dnsmasq_full_dnssec is not set
#CONFIG_PACKAGE_dnsmasq_full_auth is not set
CONFIG_PACKAGE_dnsmasq_full_ipset=y
#CONFIG_PACKAGE_dnsmasq_full_conntrack is not set
#CONFIG_PACKAGE_dnsmasq_full_noid is not set
#CONFIG_PACKAGE_dnsmasq_full_tftp is not set
CONFIG_PACKAGE_ipv6helper=y
# 工具
CONFIG_PACKAGE_htop=y
CONFIG_PACKAGE_automount=y
CONFIG_PACKAGE_openssh-sftp-server=y
# 主题
CONFIG_PACKAGE_luci-theme-argon=y
CONFIG_PACKAGE_luci-theme-rosy=y
CONFIG_PACKAGE_luci-theme-bootstrap=y
# 插件
CONFIG_PACKAGE_luci-app-accesscontrol=y
CONFIG_PACKAGE_luci-app-adbyby-plus=y
#CONFIG_PACKAGE_luci-app-aliyundrive-webdav is not set
CONFIG_PACKAGE_luci-app-arpbind=y
CONFIG_PACKAGE_luci-app-autoreboot=y
CONFIG_PACKAGE_luci-app-baidupcs-web=y
CONFIG_PACKAGE_luci-app-xlnetacc=y
CONFIG_PACKAGE_luci-app-ddns=y
CONFIG_PACKAGE_luci-app-diskman=y
CONFIG_PACKAGE_luci-app-diskman_INCLUDE_btrfs_progs=y
CONFIG_PACKAGE_luci-app-diskman_INCLUDE_lsblk=y
CONFIG_PACKAGE_luci-app-easymesh=y
CONFIG_PACKAGE_luci-app-frpc=y
CONFIG_PACKAGE_luci-app-wol=y
CONFIG_PACKAGE_luci-app-upnp=y
CONFIG_PACKAGE_luci-app-jd-dailybonus=y
CONFIG_PACKAGE_luci-app-filetransfer=y
CONFIG_PACKAGE_luci-app-firewall=y
CONFIG_PACKAGE_luci-app-nlbwmon=y
CONFIG_PACKAGE_luci-app-ramfree=y
CONFIG_PACKAGE_luci-app-hd-idle=y
CONFIG_PACKAGE_luci-app-mwan3=y
CONFIG_PACKAGE_luci-app-syncdial=y
CONFIG_PACKAGE_luci-app-samba=y
CONFIG_PACKAGE_luci-app-ssr-plus=y
#CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Kcptun is not set
#CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_NaiveProxy is not set
#CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_IPT2Socks is not set
#CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Redsocks2 is not set
#CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_Libev_Client is not set
#CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_Libev_Server is not set
#CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_Rust_Client is not set
#CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_Rust_Server is not set
#CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_ShadowsocksR_Libev_Client is not set
#CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_ShadowsocksR_Libev_Server is not set
#CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Simple_Obfs=y
#CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Trojan=y
#CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_V2ray_Plugin=y
CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Xray=y
CONFIG_PACKAGE_luci-app-turboacc=y
CONFIG_PACKAGE_luci-app-turboacc_INCLUDE_OFFLOADING=y
CONFIG_PACKAGE_luci-app-turboacc_INCLUDE_SHORTCUT_FE_DRV=y
CONFIG_PACKAGE_luci-app-turboacc_INCLUDE_SHORTCUT_FE=y
CONFIG_PACKAGE_luci-app-turboacc_INCLUDE_BBR_CCA=y
#CONFIG_PACKAGE_luci-app-turboacc_INCLUDE_DNSFORWARDER is not set
CONFIG_PACKAGE_luci-app-turboacc_INCLUDE_DNSPROXY=y
CONFIG_PACKAGE_luci-app-ttyd=y
CONFIG_PACKAGE_luci-app-udpxy=y
CONFIG_PACKAGE_luci-app-unblockmusic=y
CONFIG_PACKAGE_luci-app-unblockmusic_INCLUDE_UnblockNeteaseMusic_Go=y
CONFIG_PACKAGE_luci-app-usb-printer=y
#CONFIG_PACKAGE_luci-app-vlmcsd is not set
CONFIG_PACKAGE_luci-app-vsftpd=y
CONFIG_PACKAGE_luci-app-wrtbwmon=y
CONFIG_PACKAGE_luci-app-zerotier=y
```
