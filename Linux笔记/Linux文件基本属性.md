## Linux文件的基本属性

- 使用命令ls -l 或者使用ll 命令来查看文件的属性以及文件所属的用户组

```
  [root@www/]# ls -l
  total 64
  dr-xr-xr-x    2 root root 4096 Dec 14   2012 bin
  dr-xr-xr-x    4 root root 4096 Apr 19   2012 boot
```
以上权限中第一个字符代表这个文件是个目录、文件或链接文件等等。
- 当为[d]则表示是一个目录;
- 当为[-]则是一个文件;
- 若是[l]则表示为链接文档（link file）;
- 若是[b]则表示为装置文件里面的可供存储的接口设备（可随机存取装置）;
- 若是[c]则表示为装置文件里面的串行端口设备，例如键盘、鼠标（一次性读取装置）。

剩下的字符以三个为一组，且均为[rwx]的三个参数组合。
- [r]代表可读；
- [w]代表可写；
- [x]代表可执行。  
		注意：这三个权限的位置不会改变，如果没有权限，就会显示[-]而已。  
![](https://github.com/DreamStart20181024/StudyNotes/blob/master/Linux%E7%AC%94%E8%AE%B0/img/1227493859FdXT.png)  

## 更改文件属性

1. chgrp:更改文件组  
```
  chgrp [-R] 属组名 文件名
```
参数选项  
  `-R：递归更改文件属组，就是在更改某个目录文件的属组时，如果加上-R的参数，那么该目录下的所有文件的属组都会更改。`  
2. chown：更改文件属主，也可以同时更改文件属组  
```
  chown [–R] 属主名 文件名
  chown [-R] 属主名：属组名 文件名
```  
例如：  
```  
    [root@www ~] cd ~
    [root@www ~]# chown bin install.log
    [root@www ~]# ls -l
    -rw-r--r--  1 bin  users 68495 jun 25 08:53 install.log
```  
将install.log的拥有者与群组改回为root：  
```  
    [root@www ~]# chown root:root install.log
    [root@www ~]# ls -l
    -rw-r--r--  1 root root 68495 Jun 25 08:53 install.log
```   
3. chmod：更改文件9个属性  
```
   chmod [-R] xyz 文件或目录
   xyz说明：
           r:4
           w:2
           x:1
```  
选项与参数：  
- xyz : 就是刚刚提到的数字类型的权限属性，为 rwx 属性数值的相加。  
- -R : 进行递归(recursive)的持续变更，亦即连同次目录下的所有文件都会变更。  
