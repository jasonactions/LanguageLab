#!/bin/sh
# 双引号可以作为一个整体输出，但不具有屏蔽特殊字符的功能
# 单引号可以作为一个整体输出，具有屏蔽特殊字符的功能
# \只能屏蔽之后的第一个特殊字符
a=1
b=2
echo "$a$b"
echo '$a$b'
echo \$a\$b
# 输出当前进程号
echo $$
echo '$$'
# 显示所有文件
echo *
# 显示用户根目录
echo ~

#``与$()等效，将命令的执行输出作为变量值
test=`grep root /etc/shadow`
test=$(grep root /etc/shadow)

