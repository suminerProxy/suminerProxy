SuMinerProxy
================
一款可以屏蔽服务商监控的矿池抽水代理软件，目前固定开发者费用为0.2%！！！
----------------
SuMinerProxy支持一键在windows和Linux系统上搭建矿池抽水代理，使用ssl/tcp转发加密传输数据，支持一键屏蔽服务商的监管系统，使你的行为更加安全私密，防止服务器ip被查封。
可拓展匿名代理，保护服务器，防止DDOS攻击，让你的用户更加信赖你！
软件提供可视化界面，可一键管理转发和抽水端口，实时监测用户算力状态。

![](https://user-images.githubusercontent.com/97101851/148109476-959c3a4c-b197-4761-b9cb-f8c4f1865b2a.png)

![](https://user-images.githubusercontent.com/97101851/148109705-e3ca0848-f1d6-4eac-a63b-eda4aea867cf.png)

用户算力曲线完整，损失小，下图示例2.5G算力抽水3%客户端算力曲线。

![](https://user-images.githubusercontent.com/97101851/148109963-d1f88226-7e06-4ba4-a1e5-555d2b8340e8.png)


软件安装
------------------------------------------------------------------------------------------------------------
### 开始前准备
购买云服务器，可以参考[六家云厂商价格比较：AWS、阿里云、Azure、Google Cloud、华为云、腾讯云](https://zhuanlan.zhihu.com/p/80407877)这篇博客，这里推荐使用腾讯云香港区域服务器，
本脚本可自动屏蔽腾讯云监管后台，后续加群可拓展隐藏ip功能，故不用太担心封ip问题。
配置可选择最低配置，连接设备1000台设备推荐购买2核心1G内存2M带宽，其他数量以此类推，不建议购买阿里云轻量级服务器，问题太多不好解决!
推荐使用Linux系统，能够获得更加稳定和更加流畅的运行环境。Linux系统包含Ubuntu和centos均可适配。

### 登录服务器
### 开始安装
#### Linux系统（直接复制下列指令到服务器后台然后回车）
```c
git clone https://github.com/suminerProxy/suminerProxy.git && cd suminerProxy && chmod 777 install.sh && ./install.sh
```
开始执行自动安装脚本，安装过程中如果让输入直接输入Y然后回车，需要选择也直接选择安装完成后出现下图红色分割线隔开的文字。
![](https://user-images.githubusercontent.com/97101851/148113201-5d2e1213-358b-4dbb-bb54-3baf330f4a05.png)
则在本地浏览器输入你的ip地址:port进入管理后台，如图上文字显示我的ip为43.155.67.90,port为18888，则在浏览器地址栏输入43.155.67.90:18888进入管理后台。
第一次加载时间可能比较长，因为服务器在国外，建议使用谷歌浏览器和梯子使用。如果需要梯子，可进群私聊管理使用免费加速。
网页提示输入的token即密码，在红色文字部分，直接复制到过去点击确认就好啦！

如果出现下列错误：
![](https://user-images.githubusercontent.com/97101851/148122172-94e1516c-f55e-4f2f-859e-d06d0f0fa39a.png)
请输入下列命令安装git。
##### ubuntu系统
```C
sudo su
apt-get update
apt-get upgrade
apt-get install git
```
##### centos系统
```C
yum update
yum upgrade
yum install git
```

#### windows系统
下载软件压缩包到本地文件夹，建议放在D盘根目录文件夹，方便后面查找。
下载终端软件，推荐使用MobaXterm连接服务器，附上[国内中文版下载链接](https://wwi.lanzouw.com/isg1rye073i)
MobaXterm连接流程:打开终端 -> 点击会话 -> 选择RDP -> 输入你的主机ip和用户名（默认用户名:Administrator）-> 点击确定
![](https://user-images.githubusercontent.com/97101851/148116407-45337f58-e429-4421-8e3e-ffe741befa1e.png)

![](https://user-images.githubusercontent.com/97101851/148116556-2dd3c23f-ceca-45d0-a52e-955f474d9b63.png)

连接成功后就可以进入我们熟悉的windows输入密码界面，输入密码后就可以进入我们最爱的windows桌面啦！
使用MobaXterm连接服务器可直接在我的电脑里面访问我们本地的文件，打开此电脑。

![](https://user-images.githubusercontent.com/97101851/148117061-1fa52304-6a6e-4343-ae6b-23a6c6d03c8f.png)

从上面图我们可以看到此电脑里有 ……上的C、D、E等盘符，这就是我们本地电脑上的C、D、E盘，打开我们刚刚存的文件夹，把suminerProxy_windows.exe文件拖到服务器桌面，双击运行就好啦！
同样会出现一个这样的黑框，仔细看里面文字，在本地浏览器输入你的ip地址:port进入管理后台，如图上文字显示我的ip为43.155.67.90,port为18888，则在浏览器地址栏输入43.155.67.90:18888进入管理后台。
第一次加载时间可能比较长，因为服务器在国外，建议使用谷歌浏览器和梯子使用。如果需要梯子，可进群私聊管理使用免费加速。
网页提示输入的token即密码，在红色文字部分，直接复制到过去点击确认就好啦！

### 注意事项

###所有的涉及到的端口都需要提前到服务器管理后台的防火墙或者安全组打开对应端口哦！！！

如果在安装过程中有任何问题可直接加群私聊管理员解决哦！也可接受全定制服务哦！

# 加群私聊管理员领取隐藏ip、规避检查攻略，获取免费技术指导哦！

# 您的信任是我们努力的方向！

TG:https://t.me/+1hnMqBXqxsAyMGRl

![](https://user-images.githubusercontent.com/97101851/148119356-a89b4186-cfa7-4c93-9c6b-f08735e0cb67.jpg)

