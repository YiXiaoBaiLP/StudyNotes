#!/bin/env bash
# 删除tmp路径下的所有文件，并创建3个文件
# name = RemoveTmpAllFile.sh
# Update = 2020-03-16


#删除文件
rm -rf /tmp/*
#创建三个文件，分别是dir1~3
mkdir /tmp/dir{1..3}
#复制一个文件到tmp目录中
cp /etc/hosts /tmp/dir1
#最后打印一句话并包含当前系统时间 
#+号后面的参数不能有多余的空格，否则执行失败。
echo "报告首长，任务已于$(date +'%F %T'执行完成)" #可以执行
#讲拼接的参数改为双引号
echo "报告首长，任务已于$(date +"%F %T"执行完成)"  #可以执行
#讲拼接的参数改为反引号
#echo "报告首长，任务已于$(date +`%F %T`执行完成)"  #反引号不能执行
