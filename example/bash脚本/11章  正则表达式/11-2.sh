#示例脚本11-2.sh  点字符匹配单字符
#!/bin/bash

#Hello
#123HEllo
#123hEllo
echo "显示开头是#1的"
grep [^1] 11-2.sh
echo
echo 显示开头是H的
