#示例脚本12-5.sh  grep命令中选项的使用
#! /bin/bash
#hello
#Hello
#HELLO
#123
#345

echo 显示匹配行
grep -E *hello*  12-5.sh
echo 使用-v选项显示不匹配行
grep -v *hello*  12-5.sh
grep -v *HELLO*  12-5.sh

echo 显示开头字符不是字母的数据
grep -v ^[a-zA-Z] 12-5.sh
