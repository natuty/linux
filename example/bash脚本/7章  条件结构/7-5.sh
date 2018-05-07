#示例脚本7-5.sh使用test命令判断文件新旧
#! /bin/bash

file1=/dev
file2=/dev;
file3=/tmp;

echo 使用-nt选项判断文件的新旧
test $file1 -nt $file3
echo "$file1 -nt $file3 :$?"
test $file3 -nt $file1
echo "$file1 -nt $file3 :$?"
echo

echo 使用-ot选项判断文件的新旧
test $file1 -ot $file3
echo "$file1 -ot $file3 :$?"
test $file3 -ot $file1
echo "$file1 -ot $file3 :$?"
echo

echo 使用-ef选项判断文件是否相同
test $file1 -ef $file2
echo "$file1 -ot $file3 :$?"
test $file2 -ef $file3
echo "$file1 -ot $file3 :$?"
