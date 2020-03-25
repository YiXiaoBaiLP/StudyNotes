
i3wn 配置说明
===========


安装软件  
- 安装i3  
`sudo pacman -S i3  `

更换主题  
`sudo pacman -S lxappearance  #终端输入lxappearance启动`  

显示壁纸 这两个软件配合使用，终端输入variety启动   
`sudo pacman -S feh`  
`sudo pacman -S variety`    

### 安装终端 以及 实现终端透明效果  
`sudo pacman -S alacritty #终端`  
`sudo pacman -S picom`  
### 安装下载工具  
`sudo pacman -S qbittorrent`
`sudo pacman -S transmission-qt`
### 安装文件管理器  
`sudo pacman -S ranger`
### 安装顶部状态栏  
`sudo pacman -S polybar`
polybar 配置文件模板路径：/usr/share/dor/polybar/config
  使用教程：
    将配置文件赋值到用户根目录下/.config/文件夹下  
### 安装游戏  
`sudo pacman -S steam`
i3配置文件位置  
`～/.config/i3/config`  

更改i3窗口没有边框  
- 在配置文件中添加一行  
`new_window 1pixel`  

### 配置文件关键字说明：  
  exec_always [需要加载的程序]  #每次重启或者重启配置文件会加载  
