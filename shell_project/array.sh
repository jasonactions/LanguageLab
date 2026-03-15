#!/bin/bash

# 定义数组
name[0]="A"
name[1]="B"
name[2]="C"
name[3]="D"
# 显示数组所有的元素
echo ${name[*]}
# 显示数组最后一个元素的值
echo ${name[-1]}
# 统计数组所有元素的个数
echo ${#name[*]}
# 显示数组中所有元素的值
echo ${name[@]}
# 获取数组所有的索引
echo ${!name[*]}

# 循环访问每个元素,name会被视为一个整体
for i in "${name[*]}"
do 
	echo $i
done
# 列出所有的元素，不会视为一个整体
for i in "${name[@]}"
do 
	echo $i
done

# 赋值给数组变量
root=($(df / | tail -n +2))
echo ${root[*]}
echo ${root[1]}

# 关联数组
declare -A man
man[name]=TOM
man[age]=26
man[addr]=zhuhai
echo ${man[*]}
unset man[age]
unset man

# 遍历关联数组
name=(Jason Tom Grace Lora Sophia)
for i in "${name[@]}"
do 
	echo $i
done

echo `\n`

i=0
while [ $i -le ${#name[@]} ]
do 
	echo ${name[i]}
	let i++
done
