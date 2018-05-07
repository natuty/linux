#示例脚本4-14.sh  $@和$*的区别
#! /bin/bash

echo 使用for结构处理变量$@
count=1
for tmpstr in "$@" 
do
   echo 第$count个变量的值为：$tmpstr
   count=$[ $count + 1 ]
done
echo

echo使用for结构处理变量$*

count=1
for tmpstr in "$*" 
do
   echo 第$count个变量的值为：$tmpstr
   count=$[ $count + 1 ]
done
