#!/bin/sh 
#!/bin/bash
echo "==============欢迎使用抽水系统一键安装脚本=============="
echo "正在安装.............................."
apt-get install git -y

pIDa=`/usr/sbin/lsof -i :18888|grep -v "PID" | awk '{print $2}'`
if [ "$pIDa" != "" ];
then
	kill -9 $pIDa
  fi
  chmod 777 suminerProxy_linux
  killall suminerProxy_linux
  iptables -P INPUT ACCEPT
  iptables -P FORWARD ACCEPT
  iptables -P OUTPUT ACCEPT
  iptables -F
  iptables-save
  iptables-persistent

  nohup ./suminerProxy_linux > out.log 2>&1 &
  sleep 2s  
  file="config.yml"
  i=1  
  k=2
  echo -e "\033[31m======================配置成功==========================="
  while read line; do  
	  #Reading each line
	  
	  echo -e "\033[31m$line"
	  i=$((i+1))  
	  
  done < $file
  echo "你的ip为:"
  curl ifconfig.me
  echo "\r\n"
  echo -e "\033[31m\r\n请将在浏览器地址栏输入你的ip:18888，如你的ip为192.168.0.1，则在浏览器输入192.168.0.1:18888，密码为上面显示的token值\r\n 请注意冒号为英文冒号"
  echo -e "\033[31m========================================================="
 
