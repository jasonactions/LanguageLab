#!/bin/sh
# 等式两端不能有空格
test=123
echo $test
echo $testRMB
# 变量名已经存在会覆盖
test=234
#查看变量,${}避免特殊情况下歧义
echo $test
echo ${test}
# 使用{}分隔符指定变量名
echo ${test}RMB
# -和：是特殊符号，变量名不允许，因此也可以作为分隔符
echo $test-yuan
echo $test:yuan

# unset取消变量定义
unset test
echo $test

#变量分为：
#0.自定义变量
bb=1
#1.环境变量
echo $PATH
echo $USER
echo $UID
echo $SHELL
echo $PWD
#2.位置变量
echo $1 $1
#3.预定义变量
#上条命令执行结果
echo $?
#第一个参数
echo $0
#进程号
echo $$
#参数个数
echo $#
#所有参数
echo $*

#全局变量，子shell可使用
export aa=20
