#示例脚本12-2.sh  grep命令和管道符的使用
#! /bin/bash

echo "多次使用grep命令，逐次缩小范围"
ls -l | grep 12-1.sh
