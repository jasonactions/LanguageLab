#!/bin/sh
echo "hello world" > test.txt
cat test.txt
echo "hello word" >> test.txt
# 标准输入：0， 标准输出：1， 标准错误：2
# 标准错误输出到文件
ls /emptyfile 2>erro.txt
# 标准错误重定位到标准输出
ls /emptyfile 2>&1
# 标准输出和标准错误都重定位到一个文件
ls /etc/hosts/ /emptyfile &> test.txt
ls /etc/ /emptyfile &>> test.txt

