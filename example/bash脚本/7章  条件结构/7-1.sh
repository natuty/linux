#示例脚本7-1.sh命令test的使用
#! /bin/bash

echo 使用test命令进行算术运算
test 3 -le 5
echo "3 -le 5 :$?"

test 5 -le 3
echo "5 -le 3:$?"
