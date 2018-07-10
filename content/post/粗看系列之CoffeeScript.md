---
title:  粗看系列之CoffeeScript
date: 2017-04-03 21:19:32
updated: 2017-04-03 21:19:34
tags: 
- 粗看系列
- CoffeeScript
---

CoffeeScript是一种汇编成JavaScript的“小语言”。
<!--more-->
# 语言介绍
CoffeeScript is a little language that compiles into JavaScript.
翻译：CoffeeScript是一种汇编成JavaScript的小语言。
# v0.1.0
主要文件目录
核心文件
/libs/coffee_script/grammar.y #语法规则 类似ruby的 parse.y
核心工具
**racc**
> Racc is an LALR(1) parser generator. It is written in Ruby itself, and generates ruby programs.

语言层面的东西还是需要语言层的工具相支持。
Ruby也是一门很好的做DSL语言的语言，或者说定制语言的语言。
# 0.5.0
- 语法生成器换成了 jison
# 2.0.0 
- 还是cake取代吗Rake
- 用coffee开发coffee

# 意外收获
backbone 的开发者
underscore 的开发者
coffeescript 的开发者
是同一个人。

