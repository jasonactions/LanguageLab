#!/bin/bash
#Description:使用source加载外部脚本.
#不会创建子进程
source /root/tmp.sh
echo "hi,$env"
ls /
