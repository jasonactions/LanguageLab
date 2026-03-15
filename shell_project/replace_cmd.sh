#!/bin/sh
# 反引号会执行命令，使用命令的执行结果替代命令
sudo tar -czPf /root/log-`date +%Y%m%d`.tar.gz /var/log/
tar -czPf x.tar.gz `ls /etc/*.conf`
tar -tf x.tar.gz

# $()也具有命令替换的作用
echo "当前系统账户登录数量：$(who | wc -l)"
