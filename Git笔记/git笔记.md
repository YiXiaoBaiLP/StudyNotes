### 设置git用户名称  
git config --global user.name ""  
### 设置git邮箱  
git config --global user.mail ""  

### 不需要每次提交都填写用户名称跟密码  
git config creatential.helper store  

#### 1.初始化git仓库:  
####   git init            :在文件目录执行,进行初始化.  
#### 2.给文件条件追踪:  
####   git add [文件名]    :可以将需要追踪的文件添加追踪  
####   git add .           :将所有的更改添加大追踪  
#### 3.查看工作目录下文件是否有更新  
####   git status          :文件是否有更新  
#### 4.比较两个文件的不同  
####   git diff            :add后再次更改此文件,可以使用此命令查看文件的不同  
#### 5.文件提交  
####   git commit -m "这里写文件说明" :add后可以使用此命令进行提交  
#### 6.忽略文件,不需要git来管理的文件  
####  创建一个.gitignore 文件,将不需要git管理的文件名称填写进去.  
####  注:已经提交的文件,需要先停止追踪  
#### 7.文件停止追踪  
####   git rm --cached [文件名]  

### 第二部分:进阶  
#### 8.创建一个分支  
####   git branch [分支名称]  
#### 9.切换分支  
####   git checkout [分支名称]  
####   git checkout master     :切换到主分支  
#### 10.合并分支  
####   git merge [分支名称]  
#### 11.删除分支  
####   git branch -d [分支名称]  
####   git branch -D [分支名称]          :强制删除分支  


第三部分:提交github关联  
12.与github项目相关联  
  git remote add origin [项目链接]  
13.将跟新推送到github中  
  git push --set-upstream origin master :提交到主分支  
  git push              :通常情况下使用这个命令提交文件  
14.查看github上是否有更新  
  git pull  
