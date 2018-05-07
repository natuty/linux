#示例脚本12-1.sh  grep命令的使用
#! /bin/bash

echo "grep命令的简单使用示例"
echo "在当前目录中查找文件"
grep "12-1.sh"./
echo 找到文件12-1.sh
echo "使用grep命令查找不存在的文件"
grep "no_exsit.txt" ./
echo 未找到不存在的文件
