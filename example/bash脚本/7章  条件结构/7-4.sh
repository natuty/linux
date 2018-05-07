#示例脚本7-4.sh使用test命令判断文件属性
#! /bin/bash

file1=./7-4.sh

ls -l $file1
echo 判断文件是否具有可读权限
test -r $file1
echo "test -r file1 :$?"

echo 判断文件是否具有可写权限
test -w $file1
echo "test -w file1 :$?"

echo 判断文件是否具有可执行权限
test -x $file1
echo "test -x file1 :$?"
