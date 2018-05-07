#示例脚本11-6.sh  使用*匹配字符
 #！ /bin/bash

echo 显示包含11的所有文件
ls -l  *11*
echo

echo 显示以11开头的文件
ls -l 11*
echo

echo显示以11结尾的文件
ls -l *11
