#!/bin/sh

#==========字符串的判断和比较
a="aaaaa"
b="bbbbb"
# test命令用来判断
test a == b;echo $?

# []与test作用同, 要有空格
[ a == b ];echo $?

# -z选项可以用来测试一个字符串是否为空
[ -z $TEST ] && echo Y || echo N

# -n是-z的反处理
#TEST=12345
[ -n "$TEST" ] && echo Y || echo N

#============整数的判断和比较
test 3 -eq 3 && echo Y || echo N
test 3 -ne 3 && echo Y || echo N
[ 6 -gt 4 ] && echo Y || echo N
[ 6 -ge 4 ] && echo Y || echo N
[ 6 -lt 4 ] && echo Y || echo N
[ 6 -le 3 ] && echo Y || echo N
[ $UID -eq 0 ] && echo Y || echo N

#============文件属性的判断和比较
# 判断文件或目录是否存在
[ -e ver1.txt ] && echo Y || echo N
# 判断文件是否存在
[ -f ver1.txt ] && echo Y || echo N
# 判断文件是否不存在
[ ! -f ver1.txt ] && echo Y || echo N
# 判断目录是否存在
[ -d test/ ] && echo Y || echo N
# 判断目录是否不存在
[ ！-d test/ ] && echo Y || echo N

# 判断快设备是否存在
[ -b /dev/sda ] && echo Y || echo N

# 判断是否为软链接
[ -L /root/soft ] && echo Y || echo N

# 判断文件存在且有写权限
[ -r ver1.txt ] && echo Y || echo N
# 判断文件存在且有写权限
[ -w ver1.txt ] && echo Y || echo N
# 判断文件存在且有写权限
[ -x ver1.txt ] && echo Y || echo N
# 判断文件存在且非空
[ -s ver1.txt ] && echo Y || echo N
# 判断file1比file2新
[ file1 -nt file2 ] && echo Y || echo N
# 判断file1比file2旧
[ file1 -ot file2 ] && echo Y || echo N
# 判断file1和file2有相同的设备，inode号
[ file1 -ef file2 ] && echo Y || echo N

#==============[]和[[]]的区别
[[ b > A ]] && echo Y || echo N
# [[]]是模式匹配，支持通配符，[]只是判断字符串是否一模一样
[[ $name == J* ]] && echo Y || echo N
# []不支持&& || 等多个条件判断，[[]]支持
[[ a == a && (b == b || c == d)]] && echo Y || echo N
