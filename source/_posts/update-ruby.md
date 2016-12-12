title: ruby1.9.3to2.3.1
date: 2016-05-27 0:0:00
tags: [ruby, ruby2.3.1]
---

ruby 1.9.3 to 2.3.1
<!--more-->

# 克隆新版的master代码

安装rbenv

参照rbenv安装说明

执行到说明的第五步时，执行如下git命令

    $git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
执行上面git完成后，执行如下git命令

    $git clone https://github.com/andorchen/rbenv-china-mirror.git ~/.rbenv/plugins/rbenv-china-mirror
上述git执行完毕，开始安装ruby 2.3.1

## $rbenv install 2.3.1
安装完毕后执行

    $rbenv global 2.3.1

卸载rvm

    执行 $rvm implode

完成后，确保unicorn进程为关闭状态，进入到项目目录

    $gem install bundler
 结束后
    
    $bundle

过程中可能遇到的问题

libv8 如果报错
    
    bundle update libv8

现在你可以用你喜欢的姿势启动unicorn