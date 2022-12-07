openwrt_yml备份

```bash
#
# This is free software, lisence use MIT.
# 
# Copyright (C) 2019 P3TERX <https://p3terx.com>
# Copyright (C) 2020 KFERMercer <KFER.Mercer@gmail.com>
# 
# <https://github.com/KFERMercer/OpenWrt-CI>
#

name: compile OpenWrt

on:
  push:
    branches: 
      - master
  schedule:
    - cron: 0 2 * * *
  watch:
    types: started

jobs:
  build:
    runs-on: ubuntu-20.04
    if: github.event.repository.owner.id == github.event.sender.id

    steps:
      - name: 准备工作
        uses: actions/checkout@master

      - name: 部署编译环境
        env:
          DEBIAN_FRONTEND: noninteractive
        run: |
          sudo -E apt-get -yqq update
          sudo -E apt-get -yqq install build-essential asciidoc binutils bzip2 gawk gettext git libncurses5-dev libz-dev patch python3 python2.7 unzip zlib1g-dev lib32gcc1 libc6-dev-i386 subversion flex uglifyjs git-core gcc-multilib p7zip p7zip-full msmtp libssl-dev texinfo libglib2.0-dev xmlto qemu-utils upx libelf-dev autoconf automake libtool autopoint device-tree-compiler g++-multilib antlr3 gperf wget curl swig rsync
          sudo -E apt-get -y autoremove --purge
          sudo -E apt-get clean
      - name: 下载lede源码并移动到根目录
        run: |
          git clone https://github.com/coolsnowwolf/lede
          cp .config ./lede/.config
          mv ./lede/* ./
      - name: 写入Helloword到默认配置
        run: |
          echo "src-git helloworld https://github.com/fw876/helloworld" >> ./feeds.conf.default 
      - name: 下载rosy主题源码到package
        run: |
          git clone https://github.com/rosywrt/luci-theme-rosy package/luci-theme-rosy
      - name: 下载OpenClash源码到package并配置
        run: |
          mkdir package/luci-app-openclash
          cd package/luci-app-openclash
          git init
          git remote add -f origin https://github.com/vernesong/OpenClash.git
          git config core.sparsecheckout true
          echo "luci-app-openclash" >> .git/info/sparse-checkout
          git pull --depth 1 origin master
          git branch --set-upstream-to=origin/master master
          pushd luci-app-openclash/tools/po2lmo
          make && sudo make install
          popd
      - name: 升级安装feeds
        run: |
          ./scripts/feeds update -a
          ./scripts/feeds install -a
      - name: 载入config配置文件
        run: |
          make defconfig
      - name: 下载软件包
        run: |
          make download -j8
          find dl -size -1024c -exec ls -l {} \;
          find dl -size -1024c -exec rm -f {} \;
      - name: 开始编译固件
        run: |
          echo -e "$(nproc) thread build."
          make -j$(nproc) V=s
      - name : 上传bin文件夹(固件+ipk)在 github actions
        uses: actions/upload-artifact@master
        with:
          name: OpenWrt_firmware
          path: bin/
```
