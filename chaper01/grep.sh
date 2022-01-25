#!/bin/sh
cp /etc/passwd /tmp/
# 匹配包含root的行
grep "root" /tmp/passwd
# 匹配:和0:包含两个任意字符的行
grep ":..0:" /tmp/passwd
# 匹配包含至少一个0的行，第二个0可以出现0次或多次
grep "00*" /tmp/passwd
# 匹配包含oot或ost的行
grep "o[os]t" /tmp/passwd
# 匹配以root开头的行
grep "^root" /tmp/passwd
# 匹配以bash结尾的行
grep "bash$" /tmp/passwd
# 匹配sbin/后非n的行
grep "sbin/[^n]" /tmp/passwd 
# 匹配0重复1次到3次的行
grep "0\{1,3\}" /tmp/passwd 
# 匹配两个root之间任意字符的行,\(\)表示保留空间
grep "\(root\).*\1" /tmp/passwd

# egrep
# 匹配01,02
egrep "0{1,2}" /tmp/passwd
# 匹配0个或多个0
egrep "0+" /tmp/passwd
# 匹配root或admin
egrep "(root|admin)" /tmp/passwd
# -o仅显示匹配内容
grep Available /proc/meminfo | egrep -o "[0-9]+"

# gnu规范
# 匹配i开头或结尾
grep "i\b" /tmp/passwd
# 匹配非字母，数字，下划线
grep "\W" /tmp/passwd
#  匹配字母，数字，下划线
grep "\ww" /tmp/passwd
# -P为兼容perl的正则，匹配任意数字
grep -P --color "\d" /etc/passwd

