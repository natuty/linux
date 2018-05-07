#示例脚本12-4.sh  grep命令中选项的使用
#! /bin/bash
#hello
#HELLO

echo 不使用-E选项不区分大小写
echo 匹配hello
grep *hello*  12-4.sh
echo

echo 匹配HELLO
grep *HELLO* 12-4.sh
echo

echo 使用-E选项区分大小写
echo 区分大小写匹配hello
grep -E *hello* 12-4.sh
