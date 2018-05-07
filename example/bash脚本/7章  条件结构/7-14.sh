#示例脚本7-14.sh  if-elif-else结构的使用
#! /bin/bash

echo if-then结构的嵌套使用
echo 判断3和5的关系
if [ 3 -le 5 ]
then 
   echo 3小于5
elif [ 3 -eq 5 ]
then
   echo 3等于5
else
    echo 3大于5
fi
