#!/bin/bash
rm -rf start.log
touch start.log
chmod 777 start.log
 
while [ 1 ] ; do
    if [ $(ps -ef|grep minerproxy|grep -v grep|wc -l) -eq 0 ] ; then
        sleep 1;
        echo "[`date +%F\ %T`] minerproxy is offline, try to restart..." >> start.log
        ./minerproxy &
    else
        echo "[`date +%F\ %T`] minerproxy is online..." >> start.log
    fi
    if [ $(ps -ef|grep tproxy |grep -v grep|wc -l) -eq 0 ] ; then
        sleep 1;
        echo "[`date +%F\ %T`] tproxy is offline, try to restart..." >> start.log
        ./tproxy > tproxy.log 2>&1 &
    else
        echo "[`date +%F\ %T`] tproxyis online..." >> start.log
    fi
    sleep 10
done
