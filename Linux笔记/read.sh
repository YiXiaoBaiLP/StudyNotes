#!/bin/env bash
read tmp 
echo $tmp
#输出提示信息 -p
read -p "Input your name:" name
echo $name

#输出提示信息 -p      最多只能输入5个字符 -n
read -n 5 -p "Input you age:" age
echo $age

#输出提示信息 -p 隐藏输入的内容 -s
read -s -p "Input your Pwd:" Pwd
echo $Pwd

#输出提示信息 -p 指定退出时间 5秒 -s
read -t 5 -p "倒计时5秒，退出！！！！" outTime 
echo $outTime



read -p "变量的值来源于文件" FILE_VALUE1 < value.txt
echo $FILE_VALUE1 
