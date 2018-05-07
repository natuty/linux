#示例脚本7-15.sh  case结构的使用
#! /bin/bash

echo -n 输入一个分数: 
read num

case $num in 
1) echo 输入的数值为1;;
2) echo 输入的数值为2;;
3) echo 输入的数值为3;;
4) echo 输入的数值为4;;
5) echo 输入的数值为5;;
*) echo 输入的数值大于5;;
esac
echo case结构运行结束
