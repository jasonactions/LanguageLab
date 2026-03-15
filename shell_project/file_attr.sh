#!/bin/sh
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
