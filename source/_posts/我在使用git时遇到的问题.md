title: 我在使用git时遇到的问题
date: 2016-08-15 14:16:02
tags: [git, 问题]
---

我在使用git时遇到的问题
<!--more-->
- - - - -
# 问题

1. git add  
         git add <path>  表示 add to index only files created or modified and not those deleted 
        git add -u        git add -u 表示 add to index only files modified or deleted and not those created 
        git add -A  
        git add -i   
2. git stage
3. git 
4.   git reset f8d834a1b720d00c1175042da038d4e7866e26d1 --hard 

# 总结
git学习

git remote add pb git://github.com/paulboone/ticgit.git
 git push origin master

git fetch [remote-name]
 git remote show origin
git remote rename pb paul
git remote rm paul
git branch testing

git checkout testing

git checkout -b iss53
# step 1
$ git branch iss53
# step 2
$ git checkout iss53

git checkout -b 'hotfix'
$ git checkout master
# step 2
$ git merge hotfix

 git branch -d hotfix

git checkout master
git merge iss53

git checkout -b serverfix origin/serverfix

git checkout --track origin/serverfix

git checkout -b sf origin/serverfix

git push origin :serverfix 删除远程分支



# 参考
1. <http://hubingforever.blog.163.com/blog/static/171040579201231110371044/>
