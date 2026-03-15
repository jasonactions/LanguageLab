#!/bin/bash
phone=12333334141

#显示变量长度
echo ${#phone}

#字串截取
echo ${phone:0:3}

#字串替换
#替换字串${变量/旧串/新串}
#替换全部字串${变量//旧串/新串}
echo ${phone/3/X}

#字串掐头,不会改变变量原有值
#最短：${变量#关键词}
A=`head -1 /etc/passwd`
echo $A
echo ${A#*:}
#最长：${变量##关键词}
echo ${A##*:}

#字串去尾，不会改变变量原有值
A=`head -1 /etc/passwd`
echo $A
echo ${A%:*}
echo ${A%%:*}

#${变量:-默认值}
echo ${test:-123}
