#示例脚本7-13.sh  命令“[]”在if-then-else结构中的使用
#! /bin/bash

echo if-then结构的嵌套使用
echo 判断3和5的关系
if [ 3 -le 5 ]
then 
	if [ 3 -eq 5 ]
	then
		echo 3 等于 5
	fi
	
	if [ 3 -ge 5 ]
	then
		echo 3 大于 5
	fi
echo 3 小于 5
fi
