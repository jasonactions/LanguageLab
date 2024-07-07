#!/bin/sh
# awk语法：awk [选项] ‘条件{动作} 条件{动作} 条件{动作}......’文件名...
# 打印free的第二列
free | awk '{print $2}'
# 打印行号
free | awk '{print NR}'
# 显示第二列
free | awk '{print $2}' test1.txt
# 显示全部
free | awk '{print $0}' test1.txt 
free | awk '{print}' test1.txt
# 显示列数
free | awk '{print NR}' test1.txt
# 显示文件所有行数，会作为整体
free | awk '{print NR}' test1.txt test2.txt
# 显示文件所有行数，会作为两个个体
free | awk '{print FNR}' test1.txt test2.txt
# 打印每行的最后一列
free | awk '{print NF}' test2.txt
# 打印每行的倒数第二列
free | awk '{print $NF-1}' test1.txt
# 打印文件名
free | awk '{print FILENAME}' test1.txt

# 定义变量，输出变量值
awk -v x="Jacob" '{print x‘ test3.txt
awk -v x="Jacob" -v y=11 '{print x,y}' test1.txt
# 定义系统变量
x='hello'
# 调用系统变量
awk -v i=$x '{print i}' test1.txt
# 单引号加双引号组合
i="hello"
awk  '{print "'$i'"}' test1.txt

# 重新定义分隔符
awk -v FS=":"  '{print $2}' test2.txt
awk -v FS="[:,-]"  '{print $2}' test2.txt
# 通过选项定义分隔符
awk  -F:  '{print $2}' test2.txt
awk -F"[:,-]"  '{print $2}' test2.txt
# 定义行分割符
awk -v RS=","  '{print $1}' test1.txt
# 修改输出字段的列分隔符
awk -v OFS=":" '{print $3,$1,$3}' test1.txt
awk  -v OFS=". " '{print NR,$0}'  test1.txt
awk  '{print}' test1.txt
# 修改输出字段的行分隔符
awk -v ORS=":" '{print}' test1.txt

# print
awk  '{print "CPU"}' test1.txt
awk  '{print "data:",$1}' test1.txt
awk  '{print 12345}' test1.txt
awk  '{print $1,12345,$3}' test1.txt
awk  '{print "第1列："$1,"\t第2列:"$2}' test1.txt

# 条件匹配
#打印包含world关键字的行
awk '/world/{print}' test1.txt
awk '/world/' test1.txt
# 每行第二列包含the
awk '$2~/the/' test1.txt
# 第4列精确匹配to
awk '$4=="to"' test1.txt
awk '$4!="to"' test1.txt
# 第4列<10
awk -F: '$4<=10' /etc/passwd
# BEGIN END
awk  'BEGIN{print "ok"}' test1.txt
awk  'END{print NR}' test1.txt

awk -F: 'BEGIN{print "USER UID SHELL"} {pirnt $1,$3,$7} END{print "总共有'NR' 个账户"}' /etc/passwd

df | tail -n+2 | awk '{sum+=$4} END{print sum}'

# awk条件判断
#  单分支
ps -eo user,pid,pcpu,comm | awk '{if ($3>0.5) {print}}'

# 数组与循环

# awk函数
# 内置IO函数
df -h | awk '{ if(NF==1) {getline;print $3}; if(NF==6) {print $4} }'
# 内置数值函数
awk 'BEGIN{print cos(50)}'
# 内置字符串函数
awk '{print length()}' /etc/shells
# 内置时间函数
awk 'BEGIN{print systime()}'
# 用户自定义函数
awk 'function myfun(){print "hello"} BEGIN{myfun()}'



