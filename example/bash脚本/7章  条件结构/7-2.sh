#示例脚本7-2.sh命令“[]”的使用
#! /bin/bash

echo 使用[] 代替test命令进行算术运算
[ 3 -le 5 ]
echo "[ 3 -le 5 ] :$?"

[ 5 -le 3 ]
echo "[ 5 -le 3 ]:$?"
