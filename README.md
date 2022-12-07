# Openwrt云编译
### 来自仓库 https://github.com/hackyes/OpenWrt-CI
#### 每天凌晨2点自动编译（需掉前面的#）
```
#schedule:
#  - cron: 0 2 * * *
```
#### 大雕仓库 https://github.com/coolsnowwolf/lede

#### 打开下面链接生成.config配置文件
#### [https://hackyes.github.io/openwrt-menuconfig/index.html](https://hackyes.github.io/openwrt-menuconfig/index.html)
#### ~~编辑 .config 文件，把内容清空替换成上面链接生成的配置内容~~
#### 补充修改：
#### openwrt.yml取消了.config，直接在openwry.yml运行代码里替换相应内容配置config
#### lede.yml为调用.config配置

### 等待编译成功后，到Actions里下载固件即可
