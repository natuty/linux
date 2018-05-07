#示例脚本4-8.sh  使用-s选项不显示输入的内容
#! /bin/bash

echo "使用-s选项不显示输入的内容"
read -s  num1						#不显示输入的内容
echo "num1 = "$num1
echo "正常显示输入内容"
read num1						#显示输入的内容
echo  "num1 = "$num1					
