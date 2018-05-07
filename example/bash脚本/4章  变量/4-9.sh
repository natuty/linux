#示例脚本4-9.sh  使用-n选项不输出换行符
#! /bin/bash

echo "不使用-n选项输出换行符"
echo "输入数值："
read   num1	
echo  "输入的数值为："$num1		

echo  "使用-n选项不输出换行符"
echo  -n "输入数值："
read   num1		
echo  "输入的数值为："$num1		
