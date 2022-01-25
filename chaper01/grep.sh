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
