ps aux | grep minerproxy | grep -v grep | awk '{ print $2 }' | xargs -r kill
ps aux | grep tpoxy | grep -v grep | awk '{ print $2 }' | xargs -r kill