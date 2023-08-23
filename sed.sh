#!/bin/bash
#sed [选项] '[定位符]指令'  用于增删改查

###1. -n只打印指定的定位符号
#p:打印，d:删除，c:替换, s:替换关键词，=打印行号
#*******p:打印
#3代表第三行
sed -n '3p' /etc/passwd
#打印1到3行
sed -n '1,3p' /etc/passwd
#从第一行开始，步长2
sed -n '1~2p' /etc/passwd
#第二行开始以及后面的3行
sed -n '2,+3p' /etc/passwd
#打印1,3,6行
sed -n '1p;3p;6p' /etc/passwd
#打印除第2行以外的行
sed -n '2!p' /etc/passwd
#打印/目录结尾的分区
df -h | sed -n '/\/$/p'
#*****d:删除
#删除文件全集
sed 'd' /etc/hosts
#删除1到3行
sed '1,3d' /tmp/fstab
#*****c:替换行
#所有行替换为123456
sed 'c 123456' /tmp/fstab
#将127这行替换 127.0.0.1 localhost
sed '/127/c 127.0.0.1 localhost' /etc/hosts
#第4行替换为xxxx
sed '4c xxxx'
#*****s:替换关键词,/可以是任意关键字
sed 's/2046/xxxx' test.txt
sed 's/2046/xxxx/g' test.txt
sed 's/2046/xxxx/2' test.txt
#替换为(2046)
sed 's/2046/(&)/g' test.txt
sed '2s/2046/xxxx/g' test.txt
sed '2s/2046//g' test.txt
sed -n '2s/2046/xxxx/p' test.txt
#**** = 打印行号
#打印第一行的行号
sed -n '1=' /etc/passwd
#打印包含root的行号
sed -n '/root/=' /etc/passwd
#打印bash结尾的行号
sed -n '/bash$/=' /etc/passwd
#统计行数,打印最后一行的行号
sed -n '$=' /etc/passwd
wc -l /etc/passwd

###2. -i 直接修改源文件
sed -i '1,3d' /tmp/fstab

###3. -r 支持正则扩展规则
sed -rn '/[0-9]{3}/p' /etc/passwd

###正则定位
grep ^root /etc/passwd
sed -n '/^root/p' /etc/passwd
egrep "[0-9]{3}" /etc/passwd
sed -rn '/[0-9]{3}/p' /etc/passwd
#删除除dev的行
sed '/dev/!d' /tmp/fstab
#删除#开头的行
sed '/^#/d' /tmp/fstab
#删除空行
sed '/^$/d' /tmp/fstab
#正则符号（）具有保留功能，也就是复制出来
echo "hello world" | sed -r 's/^(.)(.*)(.)$/\3\2\1/'

###sed多行文本处理
#i插入
#第二行插入ABC_XYZ
sed '2i ABC_xyz' test.txt
#2046的行插入ABC和XYZ两行
sed '/2046/i ABC\nXYZ' test.txt
#a追加
#第二行追加ABC_XYZ
sed '2a ABC_xyz' test.txt
#2046的行追加ABC和XYZ两行
sed '/2046/a ABC\nXYZ' test.txt
#r读取
#将/etc/hosts读取出追加到test.txt的第2行
sed '2r /etc/hosts' test.txt
#将/etc/hosts读取追加到test.txt的每行
sed '2r /etc/hosts' test.txt
#读取/etc/hosts追加到test.txt的包含1888的行
sed '/1888/r /etc/hosts' test.txt
#w写入
#将test.txt的每一行另存为copy.txt
sed 'w copy.txt' test.txt
#将test.txt中包含1888的行保存到copy.txt
sed '/1888/w copy.txt' test.txt
#将test.txt的2到3行保存到line.txt中
sed '2,3w line.txt' test.txt



