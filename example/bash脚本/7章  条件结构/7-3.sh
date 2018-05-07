#示例脚本7-3.sh使用test命令判断文件属性
#! /bin/bash

file1=./7-3.sh
file2=/home
echo “使用-e选项判断文件是否存在“
test -e file1
echo "test -e $file1 :$?"
test -e file_noexist
echo "test -e file_noexist :$?"

echo “使用-f选项判断文件是否是普通文件“
test -e $file1
echo "test -e $file1:$?"
test -e $file2
echo "test -e $file2 :$?"

echo “使用-d选项判断文件是否是目录文件”
test -d $file1
echo "test -d $file1 :$?"
test -d $file2
echo "test -d $file2:$?"
