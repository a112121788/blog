title: VIM进阶
date: 2016-10-28 07:39:00
tags: 
- VIM
---

VIM进阶
<!--more-->

# 块编辑
v 可视模式
ctrl + v 列编辑模式

vim 所有的模式
o 普通模式
x 可视模式
s 选择模式：类似于可视模式，键入的字符对选择区进行替换
i 插入模式： 也用于替换模式
c 命令行模式： 输入 ":" 或"/" 命令时

# 文件识别
filetype on

# 插件加载
filetype plugin on

# 语法高亮
syntax on

# 键盘映射

# 函数
解决在键盘映射中执行更复杂的功能
要求：
函数名必须以大写字母开始
函数可以有返回值
函数可以有范围前缀

" key mapping
map <F8> <Esc>:call ToggleCopy()<CR>

" global variable
let g:copymode=0

" function
function ToggleCopy()
    if g:copymode
        set number
        set mouse=a
    else
        set nonumber
        set mouse=v
    endif
    let g:copymode=!g:copymode
endfunction

# 录制宏
录制的宏保存在寄存器中
vim的寄存器分为数字寄存器和字母寄存器
字母寄存器 0-9 
0 保存着上次复制的内容，1-9 按照最近的顺序保存着最近删除的内容
字母寄存器 a-z
copy 3行到 寄存器 c: c3yy.

***** demo： **
1. normal 模式 。开始录制并存入m寄存器 qm
2. xxxx 对着一行的操作
3. 结束录制 q
4. 对下面的n行进行操作demo 100@m 

