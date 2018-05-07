#示例脚本4-4.sh  不指定变量名输入数据，使其保存在环境变量$REPLY中
#! /bin/bash

echo "指定变量num"
read num			#指定变量num接收数值
echo '$num='$num
echo "未指定变量"
read  			#不指定变量名，使数据保存在环境变量$REPLY中
echo '$num='$num
echo '$REPLY'=$REPLY
