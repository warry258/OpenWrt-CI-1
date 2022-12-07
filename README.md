# Openwrt云编译
#### 来自仓库 https://github.com/hackyes/OpenWrt-CI
#### 每天凌晨2点自动编译（需去掉前面的#）
```
#schedule:
#  - cron: 0 2 * * *
```
#### 大雕仓库 https://github.com/coolsnowwolf/lede
## 使用说明：
### 1、lede.yml需要调用.config配置文件，.config生成方式如下
#### &ensp;&ensp;方式1：打开下面链接生成配置，把.config内容替换成链接生成的配置内容
#### &ensp;&ensp;&ensp;&ensp;[https://hackyes.github.io/openwrt-menuconfig/index.html](https://hackyes.github.io/openwrt-menuconfig/index.html)
#### &ensp;&ensp;方式2：用其他方式生成，复制到.config里
### 2、openwrt.yml取消了.config，直接在openwry.yml运行代码里替换相应内容配置config
## 运行lede.yml时关于SSH
#### 在Run Workflow时把SSH connection to Actions的值改为true，在 Actions 日志页面等待执行到SSH connection to Actions步骤，会出现类似下面的信息：
```
To connect to this session copy-n-paste the following into a terminal or browser:
ssh Y26QeagDtsPXp2mT6me5cnMRd@nyc1.tmate.io
https://tmate.io/t/Y26QeagDtsPXp2mT6me5cnMRd
```
#### 复制 SSH 连接命令粘贴到终端内执行，或者复制链接在浏览器中打开使用网页终端。（网页终端可能会遇到黑屏的情况，按 Ctrl+C 即可），输入：
`cd openwrt && make menuconfig`
#### 完成后按Ctrl+D组合键或执行exit命令退出，后续编译工作将自动进行。
#### 等待编译成功后，到Actions里下载固件即可
