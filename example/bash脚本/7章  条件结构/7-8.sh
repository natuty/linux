#示例脚本7-8.sh复合测试条件的使用
#! /bin/bash

num1=3
num2=5
num3=5

echo 使用逻辑或运算符
test $num1 -ge $num2 -o $num3 -eq $num2
echo "逻辑或运算运算结果:$?"
echo

echo 使用逻辑与运算符
test $num1 -ge $num2 -a $num3 -eq $num2
echo "逻辑与运算运算结果:$?"

