# Openwrt云编译
### 来自仓库 https://github.com/hackyes/OpenWrt-CI
#### 修改：
#### openwrt.yml取消了.config，直接在运行代码里配置config
#### lede.yml使用原.config配置

#### 每天凌晨2点自动编译（未知）
#### 大雕仓库 https://github.com/coolsnowwolf/lede

### 把本仓库克隆到自己的仓库里
#### 打开下面链接生成.config配置文件
#### [https://hackyes.github.io/openwrt-menuconfig/index.html](https://hackyes.github.io/openwrt-menuconfig/index.html)
#### ~~编辑 .config 文件，把内容清空替换成上面链接生成的配置内容~~
#### 修改：取消了.config，直接在openwry.yml运行代码里替换相应内容配置config
### 点这右上角 ✰Star  变成 ★Starred 就自动开始编译，在Actions里可查看编译情况及结果

### 等待编译成功后，到Actions里下载固件即可
