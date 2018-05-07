#示例脚本4-6.sh  使用-t选项限定等待时间
#! /bin/bash

echo "设定等待时间为4秒"
read -t4  num1					#限定等待时间为4秒
echo "num1 = "$num1
echo "不限定时间输入"
read num1						#不限定时间输入
echo  "num1 = "$num1	
