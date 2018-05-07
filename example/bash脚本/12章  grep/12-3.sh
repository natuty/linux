#示例脚本12-3.sh  grep命令中选项的使用
#! /bin/bash

echo '显示匹配hello的内容'
grep -E "hello" test.txt
echo 显示匹配的行数
grep -c "hello" test.txt
echo

echo '显示Hello匹配的内容'
grep -E "Hello" test.txt
echo 显示匹配的行数
grep -c "Hello" test.txt
