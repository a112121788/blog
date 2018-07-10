---
title: 我在使用Vim时候遇到的问题
date: 2016-08-12 23:16:59
tags: [Vim, 问题]
---

 我在使用Vim时候遇到的问题
<!--more-->
- - - - -
#0. 同时打开多个文件
        vim file1 file2 file3 (未启动)
        :open file (已启动)
#1. 如何切换文件(同一个窗口)
        Ctrl+6 下一个文件    
        :bn 下一个文件
        :bp 上一个文件
#2. 如何切换窗口
        Ctrl+w+方向键 切换到 对应方向后一个窗口
        Ctrl+w+ h/j/k/l 同上
        Ctrlww 依次向后切换到下一个窗口中
#3. 如何替换单行里面的同一个单词
        替换当前行第一个词
        :s/old_str/new_str
        替换当前行所有词
        :s/old_str/new_str/g
        aa/bb/aa/bb/aa/bb
        aaaa/bb/aaaa/bb/aaaa/bb
        aaaa/bb/aaaa/bb/aaaa/bb
        替换所有行的所有词
        :s/old_str/new_str/g
        替换第n行到最后一行所有词
        :n,$s/old_str/new_str
        替换当前行到最后一行所有词
        :.,$s/ord_str/new_str
       
#4. 查找
        简单查找
        /search_str
#5.  复制
        yy 复制当前行
        复制多行
        方法1 
        :9,15 co 16  复制
         方法 2
         光标移动到起始行，输入ma
        光标移动到结束行，输入mb
        光标移动到粘贴行，输入mc
        然后输入:'a,'b, co 'c   把co换成m就是剪切
        若要删除多行，则输入：'a,'b de
#6. 删除多行
        dd 删除当前行
        ndd 删除以当前行开始的n行
        dw 删除以当前字符开始的一个字符
        ndw 删除以当前字符开始的 n个字符
        d$, D 删除以当前字符开始的一行字符
        d) 删除到下一行开始
        d} 删除到下一段开始
        d enter 删除两行
#7. 多行移动
        :9,15 m 16  移动
#9. 如何使用emmet
        ctrl + y + ,
#10. 常用快捷键
        F5： file tree 
        F6: 文件结构
        gc: comment
        gcc: 注释当前行
        <C+A>: 当前光标下数字加1
        gd:  查找当前光标下的单词
        di(  删除()中的内容
        di' di]
        <C+[>: 等于Esc
        gg: 等于G
       Shift+J:  合并下一行和上一行
       gUaw 当前单词转化为大写
        guaw 小写 
        g~aw 大小写切换
        <C+r>{register} 插入 寄存器的内容
        <C+r> + =  简单的计算
        

        

#11. 智能提示
#12. js 代码高亮
        代码高亮打开
#13. 列模式
#14. Vim的操作符命令
        c 修改
        d 修改
        y 复制到寄存器
        g~ 反转大小写
        gu 转换为小写
        gU 转换为大写
        > 增加缩进
        < 减小缩进
        = 自动缩进
        ! 使用外部程序过滤{motion}所跨越的行
#15. 动作命令
        
#16. 模式切换
<Esc> 切换到普通模式
<C- [>切换到普通模式
<C-o> 切换到插入-普通模式
#17. 命令行模式
        1 文件的第一行
        $ 文件的最后一行
        0 虚拟行，第一行的上一行
        . 光标所在行
        % 整个文件 :1,$
        'm 包含位置标记m的行
        :copy  :co :t 等效的
        :6t. 把第六行复制到当前行下面
        :t6 把当前行复制到第六行下面
        :t. 等效 yyp
        t$ 把当前行复制到文件尾
        :'<,'>t0 把当前现在的行复制打文件开头
         :move :m        
        
# 参考
1. <http://www.open-open.com/lib/view/open1429884437588.html>
2. 
