#示例脚本11-7.sh  屏蔽特殊字符
#! /bin/bash

grep "*\$*" 11-7.sh
echo

echo '不使用反斜杠匹配$'
grep "*$*" 11-7.sh
