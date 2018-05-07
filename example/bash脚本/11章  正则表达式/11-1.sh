#示例脚本11-1.sh  点字符匹配单字符
#!/bin/bash

#Hello
#HEllo
#hEllo
echo 使用点字符匹配字符
grep  -v H.llo 11-1.sh 
echo

grep ..llo 11-1.sh
