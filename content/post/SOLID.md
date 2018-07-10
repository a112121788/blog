---
title: SOLID
date: 2016-11-20 11:57:08
tags: 
- SOLID
---

SOLID
<!--more-->

[TOC]
#第一章 Why SOLID
1. 作为一个开发者，你在写什么？
2. 你的代码好看吗？
记住： 仅仅遵循一些设计模式并不能保证你写出来好的代码。
**根据一下几点检查你是否正在写不良代码：**
1. 代码使用了设计模式吗？
2. 代码是否耦合？
3. 代码是否测试了？
4. 代码是否刻度？
5. 代码是否重复？
6. 代码是否太长降低了可读性？
但是这些并不能表明你的代码是 SOLID
## 1.1 代码使用了设计模式吗？
使用设计模式不是义务，没有人强迫你使用，自己判断是否想要使用设计模式。
脏代码 需要你做很多的重构工作，脏代码不遵循任何模式或者原则。
> 决定哪一种设计模式适合你的需求。

## 1.2 代码是否耦合？
如果你的代码模块相互依赖，说明你正在写脏代码。

## 1.3 代码是否测试了？
代码写测试是好喜欢。
**好处如下：**
1. 减少由于 unrecovered issue 的重复工作
2. 写可测试的代码
3. 减少了调试代码的时间。基于 TDD，可以更早、更快的定位问题。
4. 可以容易的判断最近的改变和重构是否破坏了代码。
> 测试很重要，不介绍。

## 1.4 代码是否可读？
> 如果你自己的代码你无法读下去，说明你在写脏代码。

## 1.5 代码是否重复？

## 1.6 代码是否太长降低了可读性？
#第二章 我应该关心 SOLID
不关心的主要原因：
1. 我用了 OOP
OOP 不能保证你遵循设计模式
2. 我可以实现设计模式
模式只是告诉我们怎样设计程序
但 SOLID 原则知道我们让我们写出更好，更清爽的代码
3. I use JAVA， not .NET/C#."
SOLID 和变成语言无关
4. I am an architect
5. I am working on a maintenance project
6. I do QA and work with Selenium
7. I am a technical consultant
# 第三章 在开始 SOLID 之前
```table
SOLID
S for SRP    | Single REsponsibility Principle
O for OCP  | Open-Closed Principle
L for LSP     | Liskov Substitution Principle
I fro ISP      | Interface Segregation Principle
D for DIP   | Dependency Inversion Principle
```
## 设计模式 && 设计原则
# SOLID
##SRP
	The Single Responsibility Principle 
**单一责任原则**： 
当需要修改某个类的时候原因有且只有一个（THERE SHOULD NEVER BE MORE THAN ONE REASON FOR A CLASS TO CHANGE）。换句话说就是让一个类只做一种类型责任，当这个类需要承当其他类型的责任的时候，就需要分解这个类。 

##OCP
	The Open Closed Principle 
**开放封闭原则 **
软件实体应该是可扩展，而不可修改的。也就是说，对扩展是开放的，而对修改是封闭的。这个原则是诸多面向对象编程原则中最抽象、最难理解的一个。
##LSP
	The Liskov Substitution Principle	
**里氏替换原则**
当一个子类的实例应该能够替换任何其超类的实例时，它们之间才具有is-A关系 
##DIP
	The Dependency Inversion Principle	
**依赖倒置原则**
1. 高层模块不应该依赖于低层模块，二者都应该依赖于抽象 
2. 抽象不应该依赖于细节，细节应该依赖于抽象 
##ISP
	The Interface Segregation Principle	
**接口分离原则**
不能强迫用户去依赖那些他们不使用的接口。换句话说，使用多个专门的接口比使用单一的总接口总要好。 

**参考:**
> 1.http://www.cnblogs.com/shanyou/archive/2009/09/21/1570716.html
> 2.https://www.syncfusion.com/resources/techportal/ebooks/solidprinciplessuccinctly





