#示例脚本7-10.sh  使用符号“[]“代替test命令
#! /bin/bash

echo 使用[] 命令替换test进行逻辑判断
echo 判断3是否小于5
if [ 3 -le 5 ]
then 
 	echo 3 小于 5
fi
 
echo 判断5是否小于3
if [ 5 -le 3 ]
then 
	echo 5 小于 3
fi
