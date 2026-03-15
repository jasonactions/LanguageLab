#!/bin/sh
# 将多个连续的a合并为一个a
echo "aaa bbb" | tr -s "a"
# 以空格为分隔符，获取第二列
echo "A B C" | cut -d " " -f2


