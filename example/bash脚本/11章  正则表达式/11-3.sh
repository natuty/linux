#示例脚本11-3.sh 查找开头字符为脱字符
#!/bin/bash

#^
echo匹配开头字符为脱字符
grep   "#\^" 11-3.sh
echo

echo 查找包含脱字符的文本行
grep   "*#\^*" 11-3.sh
