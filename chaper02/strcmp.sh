#!/bin/sh
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
