#示例脚本4-7.sh  使用-n选项限定输入字符个数
#! /bin/bash

echo "使用-n选项限定输入字符个数"
read -n4  num1					#限定为4个字符
echo "num1 = "$num1
echo "不限定字符个数，输入10个字符"
read num1						#不限定时间输入
echo  "num1 = "$num1				
