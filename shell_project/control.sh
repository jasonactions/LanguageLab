#!/bin/bash
#控制关系包含：“；”， “&&”， “||”
#；只有先后顺序，没有逻辑关系
cd /etc; ls
#&& 前条命令执行成功，后面才会执行
[ a == a ] && ls
#|| 前面命令执行失败，才会执行后面
[ a == a ] || echo message
