---
title: 认真学系列之Python
date: 2017-04-24 06:46:04
tags: 
- 认真学
---

Python
<!--more-->

# python入门

1. <http://www.liaoxuefeng.com/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000>

## Python的诞生
> Python是著名的“龟叔”Guido van Rossum在1989年圣诞节期间，为了打发无聊的圣诞节而编写的一个编程语言。


## Python解释器
CPython为主

## Python的毛病
1. 在文本编辑器中，需要设置把Tab自动转换为4个空格，确保不混用Tab和空格。  SB

## 编码问题
Unicode
UTF-8
不要老纠结编码问题。

编码问题算是一个系统性BUG。不应该让程序员浪费时间解决这个问题。

## 长度计算函数
len("AA")
老是记不住


##  文件类型声明
```python
# -*- coding: utf-8 -*-
```
好无聊。我还是下面的声明方式
```python
#encoding=uft-8
```
## 编码转换
```python
"XXX".encode("utf-8")
```
## 没有Array只要List
如何获取List的最后一个元素，根据下标
```Python
list1[len(list1) -1]
```
## 元组是什么东西
tuple
可以简单的理解为List的不可变形式。
一旦初始化后就不可以改变了。
## if&&else
冒号很蛋疼
## int()
试试就知道了
## for
还是不能少冒号
range() 很方便
## dict
dict≈map
## set
set ≈ array.uniq
## 函数
为什么会出现函数
解决代码复用问题，是代码的一种抽象形式。
函数来自于哪里？
内置函数、第三方库的函数、自己写的函数。
## 写一个函数吧
```python
# wrong
def func1
    print "func1"
```
算一下上面的2行代码有几个错误

```python
# right in python
def fun1():
    print("func1")
fun1()
```
注意点
1. 函数参数个数
2. 数据类型检查
3. 返回值
4. 空函数要强制pass占位

## 函数的默认参数
默认参数必须指向不变对象！不然坑的是自己
## 函数之可变参数
```python
def fun1(*vars):
    print(len(vars))

fun1() #0
fun1(1) #1
fun1(1,1,2) #3

```
## 函数之关键字参数
```python
def person(name, age, **kw):
    print('name:', name, 'age:', age, 'other:', kw)
```
注意
      *args是可变参数，args接收的是一个tuple；
      **kw是关键字参数，kw接收的是一个dict

## 函数之递归

- - - - -
# python高级特性
```python
list1 = ["A","B","C"]
list1[:3]
```
如何更好地理解切片
list1[start=0:end=len(list1):step=1]

# 再讲for
任何可迭代对象都可以作用于for循环，包括我们自定义的数据类型，只要符合迭代条件，就可以使用for循环。

```python
from collections import Iterable
isinstance('abc', Iterable) 
```













1. <http://www.liaoxuefeng.com/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000>


# python高级
## 迭代器
凡是可作用于for循环的对象都是Iterable类型；
凡是可作用于next()函数的对象都是Iterator类型，它们表示一个惰性计算的序列；
集合数据类型如list、dict、str等是Iterable但不是Iterator，不过可以通过iter()函数获得一个Iterator对象。
Python的for循环本质上就是通过不断调用next()函数实现的，例如：

# 函数式编程
## 高阶函数

函数本身也是一个变量

```python
import builtins
```
把函数作为参数传入，这样的函数称为高阶函数，函数式编程就是指这种高度抽象的编程范式。

## map/reduce

map
把一个list 的每个item转换为str
```python
list1 = [1,2,3,4,5]
print(list(map(str, list1)))
```
reduce
reduce把一个函数作用在一个序列[x1, x2, x3, ...]上，这个函数必须接收两个参数，reduce把结果继续和序列的下一个元素做累积计算。

## filter

## sorted
```
sorted(['bob', 'about', 'Zoo', 'Credit'], key=str.lower, reverse=True)
```

## 返回函数

返回函数不要引用任何循环变量，或者后续会发生变化的变量。

## 装饰器
有点难理解
核心不过是变量可以是一个函数。

# 模块
包下必须有__init__.py

# OOP
面向对象的抽象程度又比函数要高，因为一个Class既包含数据，又包含操作数据的方法。

有编程基础的就不要重复的学习OOP了

注意 
Python允许在定义class的时候，定义一个特殊的__slots__变量，来限制该class实例能添加的属性：


# 多继承 
MixIn就是一种常见的设计。

# IO
## 文件读写
```python
# 打开文件
f = open(filename, 'r')
f.read()
f.close()

with open(filename,'r') as f:
        pass
```

with 操作文件IO是个好习惯
```python
import os
print(os.name)
```
## 序列化
import pickle
不过还是json更通用

# 线程和进程
GIL全局锁，导致了多线程无法利用多核。多线程的并发在Python中就是一个美丽的梦
# 正则表达式
```python
import re
```














