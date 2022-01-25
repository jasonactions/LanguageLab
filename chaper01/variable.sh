#!/bin/sh
# 等式两端不能有空格
test=123
echo $test
echo $testRMB
# 使用{}分隔符指定变量名
echo ${test}RMB
# -和：是特殊符号，变量名不允许，因此也可以作为分隔符
echo $test-yuan
echo $test:yuan

# unset取消变量定义
unset test
echo $test


