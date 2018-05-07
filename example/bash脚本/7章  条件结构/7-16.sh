#示例脚本7-16.sh  case结构的使用
#! /bin/bash

echo 当前使用的用户为$USERNAME
echo 使用case结构
case $USERNAME in 
"root") echo 使用root用户登录，具有最高权限;;
"ben") echo 使用ben用户登录，具有普通权限;;
*) echo 使用其他用户登录，具有权限不明确;;
esac
echo 结束case结构
