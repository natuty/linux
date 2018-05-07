#示例脚本4-5.sh  使用-p选项为多个变量赋值
#! /bin/bash

echo "使用-p选项为多个变量赋值"
read  –p "输入3个数值： " num1, num2 num3 		#为多个变量赋值
echo "输出第1个变量的值："
echo "num1 = "$num1
echo "输出第2个变量的值："
echo "num2 = "$num2
echo "输出第3个变量的值："
echo "num3 = "$num3
echo

echo "交换赋值顺序"
read  –p "输入3个数值： " num3, num1 num2 		#为多个变量赋值
echo "输出第1个变量的值："
echo "num1 = "$num1
echo "输出第2个变量的值："
echo "num2 = "$num2
echo "输出第3个变量的值："
echo "num3 = "$num3
