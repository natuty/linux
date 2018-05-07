#示例脚本11-9.sh  模式出现机率的使用
#! /bin/bash

echo 匹配字符b至少出现2次
grep "b\{2\}"  11-9.sh  
echo

echo 匹配字符c出现1-2次
grep "c\{1,2\}"  11-9.sh
