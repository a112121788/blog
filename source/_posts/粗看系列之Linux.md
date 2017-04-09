title:  粗看系列之Linux
date: 2017-04-05 01:44:22
updated: 2017-04-05 01:44:25
tags: 
- 粗看系列
- linux
---

linux
<!--more-->
# Linux
> linux要掌握到什么程度，取决于你的需求。

linux存在的地方
linux系统，linux桌面系统，linux服务器。
macOS 只能说和linux系统很像，但是又不是Linux。具体的渊源就不深究了。

学若只为学，不如不学。
学为用，是为学。

## shell
$
pwd
ls
cd
file
**选项和参数**
‘-’  短选项
‘--’ 长选项

Linux系统中， 一切皆文件。
文本是简单的字符与数字之间的一对一映射。

ln
mv 
mkdir
rm
cp

命令的四种形式
- 一个可执行程序
- 一个内建于shell自身的命令
- 一个shell函数
- 一个命令别名
cat
sort
uniq
grep
wc
head
tail

**权限相关**
id
chmod
umast
su
sudo
chown
chgrp
passwd
adduser
useradd
groupadd
**进程**
ps
top
jobs
bg
fg
kill
killall 
shutdown


**光标移动**
实在是记不住那么多快捷键
set -o vi

## 配置文件&shell文件
printenv
set
export
alias

**vi**
使用、使用、使用。

## 基本工具
**网络系统**
ping
traceroute
netstat
ftp
wget
ssh

**查找文件**
locate
find
xargs
touch
stat

**归档和备份**
gzip
bzip2
tar
zip
rsync

## 编写shell脚本
> 简化工作

如何编写一个脚本
- 编写一个脚本
- 使脚本文件可执行
- 把脚本放置在shell能够找到的地方

```shell
#!/bin/bash
# This is our first script.
echo 'Hello World!'
```
进阶： 轻松维护。 

**自顶向下设计**
逐步求精的设计程序的过程和方法

流程控制
```shell
# if
x=5
if [ $x = 5 ]; then
    echo "x equals 5."
else
    echo "x does not equal 5."
fi

#while/until 
# while-count: display a series of numbers
count=1
while [ $count -le 5 ]; do
    echo $count
    count=$((count + 1))
done
echo "Finished."

#case
# case-menu: a menu driven system information program
clear
echo "
Please Select:
1. Display System Information
2. Display Disk Space
3. Display Home Space Utilization
0. Quit
"
read -p "Enter selection [0-3] > "
case $REPLY in
    0)  echo "Program terminated."
        exit
        ;;
    1)  echo "Hostname: $HOSTNAME"
        uptime
        ;;
    2)  df -h
        ;;
    3)  if [[ $(id -u) -eq 0 ]]; then
            echo "Home Space Utilization (All Users)"
            du -sh /home/*
        else
            echo "Home Space Utilization ($USER)"
            du -sh $HOME
        fi
        ;;
    *)  echo "Invalid entry" >&2
        exit 1
        ;;
esac

# for
for variable [in words]; do
    commands
done

```

自我感觉， shell的语法设计的不是很人性。


## 参考
《Linux命令行大全》
[Linux命令行大全](https://billie66.gitbooks.io/tlcl-cn/content/chap00/introduction.html)

[Top-down and bottom-up design](https://en.wikipedia.org/wiki/Top-down_and_bottom-up_design)