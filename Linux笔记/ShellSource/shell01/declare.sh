#!/bin/bash
declare -i INT=12354324534   #变量Ａ现在只可以赋值数值类型，当赋值为字符串时，此值为０
echo '当前INT为数值类型值' $INT

INT=Hello  #给INT赋值字符串类型
echo '给INT赋值字符串后；INT的值为' $INT 


declare -r READ='我是一个只读变量，我的值不能更改；否则会报错'  #-r 只读变量，不可以重新赋值，否则报错，作用域当前shell脚本
echo $READ

#给只读变量重新赋值
READ='我重新赋值了。' #词句报错,赋值失败
echo $READ


declare -x AAA='我是一个环境变量' #定义了一个临时的环境变量

echo $AAA
