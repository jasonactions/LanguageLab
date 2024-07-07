#!/bin/sh
cp /etc/passwd /tmp/
# grep选项
#-i 不区分大小写，-w匹配一个单词
grep -i "root" /tmp/passwd
grep -v "root" /tmp/passwd
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
#匹配出现数字任意次的行
grep "[0-9]*" /tmp/passwd
#匹配3位或4位数字的行
grep "[0-9]\{3,4\}" /tmp/passwd

#grep -E表示扩展
#表示ab至少出现2次
echo "ababab" |grep -E “(ab){2}”
#sbin或bin,？表示前面的可出现可不出现
grep -E “s?bin”  /etc/passwd
# 匹配01,02
grep -E  "0{1,2}" /tmp/passwd
# 匹配至少1个0
grep -E "0+" /tmp/passwd
# 匹配root或admin,()表示组合
grep -E "(root|admin)" /tmp/passwd
#匹配o出现两次
grep -E "o{2}" /tmp/passwd
# -o仅显示匹配内容,+表示至少出现一次
grep Available /proc/meminfo | grep -E -o "[0-9]+"

# -P为兼容perl的正则，匹配任意数字
grep -P --color "\d" /etc/passwd
# -P为兼容perl的正则，匹配非数字
grep -P --color "\D" /etc/passwd
# -P为兼容perl的正则，匹配多个数字
grep -P --color "\d+" /etc/passwd
# 匹配非字母，数字，下划线
grep -P --color "\W" /etc/passwd
#  匹配字母，数字，下划线
grep "\w" /tmp/passwd
# 匹配以bin开头或结尾
grep "\bbin\b" /tmp/passwd
# 过滤空白
grep "\s" /tmp/passwd

