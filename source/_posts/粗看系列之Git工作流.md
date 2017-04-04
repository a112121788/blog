title:  粗看系列之Git工作流
date: 2017-04-03 22:12:12
updated: 2017-04-03 22:12:14
tags: 
- 粗看系列
- Git工作流
---

功能分支工作流,GitFlow工作流,集中式工作流
<!--more-->
# 粗看系列之Git工作流

## 功能分支工作流
工作方式：
中央仓库 所有开发的交互中心
**2 + N 模型**
- master
- develop
- N个功能分支

## GitFlow工作流
首先是 功能分支工作流
然后：
develop分支上做里一次发布（或者到了约定的发布日）的**足够功能**，就从
develop分支上fork一个发布分支，新建的分支用于开始循环发布。
新的功能不在加到这个分支上，这个分支只应该做Bug修复，文档生菜和其他面向发布。

## 工作流的初心
让Git更好的我为你服务。

## 参考
[Git工作流指南：功能分支工作流](http://blog.jobbole.com/76857/)
[Git工作流指南：集中式工作流](http://blog.jobbole.com/76847/)
[Git工作流指南：Gitflow工作](http://blog.jobbole.com/76867/)