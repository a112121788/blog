title:  粗看系列之Ruby
date: 2017-04-03 11:40:54
updated: 2017-04-03 11:40:56
tags: 
- Ruby
- 粗看系列
---

进一步熟悉ruby这门编程语言
<!--more-->
# 核心点：
- 等级划分
- 自我定位
- 自己要晋升的等级

> [程序员的八个级别](http://www.vaikan.com/the-eight-levels-of-programmers/)
- 已经死掉的程序
- 成功的程序员
- 著名程序员
- 有工作能力的程序员
- **普通程序员**
- 业余程序员
- 无名程序员(码农)
- 烂程序员

> 普通程序员: 
处于这个等级的你是个不错的程序员，有自知之明，认识到自己不是个优秀程序员。也许永远也不是。天才跟成功通常没有多大牵连。如果你会做生意并有人际交往能力，你也许会非常的成功。如果你是个水平一般的程序员但却想以此为生，你应该聪明的知道，你并不一定需要去编码。不要轻视自知之明的作用。很少人能做到这点。没有天份没什么。要有勇气。弄清你擅长什么，朝这个目标奋斗。坚持不懈。

> 有工作能力的程序员:
你是一个职业上成功的软件开发人员。你的技术水平让你受欢迎，你永远不愁找到一份很好的工作。你的同事都很敬仰你。你工作过的每个公司都会由于你的到来而在某方面有提高或增强。但你还能怎样？

目标： 有工作能力的程序员

# 需要提高的地方：
- 技术能力
- 业务能力
- 人际交往能力
- 影响力
- - - - --
# 等级划分
- 了解
    工作1年，会用
- 熟悉
    工作2~3年。 能解决一些基础难题
- 掌握
    工作3~5年。 能解决常见难题，以及一些怪异问题
- 精通
    工作5年以上。专家级。能给语言打补丁。

我现在处于熟悉阶段。
我希望做到掌握以上精通一下。

那进阶的思路：
看哪个阶段需要掌握什么样的能力。
快速补充，实践。

# 针对语言
学习的主版本：2.3.1
对比的版本： 1.9 2.3 2.4
不依靠书本。借助互联网和自己的知识储备。
- 学习语法
- 学习特性
- 核心库

- 标准库
- 版本差异
- 第三方库
- 语言的用途

- 使用误区 坑
- 语言的bug 坑

- 语言源码（最高级）

最佳实践 自己总结&别人的总结

- - - - -
# 入门学习资料
[Ruby_Programming](https://en.wikibooks.org/wiki/Ruby_Programming)
[Ruby User's Guide](http://www.rubyist.net/~slagell/ruby/index.html)
## Ruby_Programming
### 目录：
#### 概览
- 面向对象
- 脚本语言
- 松本行弘
- ruby-lang.org
- 1993年2月
- 1994年12月 alpha
- Perl && Python的替代者
- 大量学习 Perl 、Lisp && Smalltalk
- 但是没有大量学习Python。但是Python的代码帮助了松本更好的开发ruby
- Mac OS X 内置Ruby
- 很多 Linux发行部也内置Ruby
- 支持的操作系统： Unix、DOS、BeOS、OS/2、Windows && Linux
#### 核心特性
- OO
    Every value in Ruby is an object
- Mixins
- Dynamic
- Singleton Classes
    真相： 每一个对象有两个类： 一个正常的类&&一个singleton class
- Metaprograming
   更好的抽象设计
- Flexibility
- Variables and scope
    x local variable
    $x gloable variable
    @x instance variable
    @@x class variable
- Blocks
```ruby
laundry_list.sort do |a,b|
  a.color <=> b.color
end
```
**The block is everything between the do and the end. **
与其他语言相比，ruby的闭包用着更自然。
其他高级特性：
- 异常
- gc
- 操作系统无关的线程（1.9以后用native线程了）
- 用C写Ruby扩展||把Ruby嵌入到其他软件中。

#### 安装
- 略
#### 编辑器
- 略
#### 符号约定
- 略
#### irb
- interactive ruby
- REPL(Read-Eval-Print Loop)
`irb --simple-prompt`
`irb`
#### Basic
- hello world
- Strings
- Alternata quotes
- Here documents
- 对象
- ruby basics
- 变量
- Program flow
- Funcitons
- Blocks
```ruby
# 1
do

end
# 2
{
    
}
```
- OO
- 数据类型
- Methods
- 类和对象
- 异常
#### 语法
- 词法
- 变量和常量
- 字面量
- 操作符
- 流程控制
- 方法调用
- 类
- Hooks
#### 内建函数
#### 预定义变量
#### 预定义类
#### 对象
#### 数组
#### 类
#### 比较器
#### 编码
#### 枚举
#### lazy evalutaion
#### 返回枚举的方法
#### 更多的枚举器
#### 异常
#### FalseClass
#### IO-Fiber
#### IO  
- Encoding
- gets
- recv
- read
#### IO- File
#### IO
- chmod
- grep
- join
#### IO- File::Stat
#### IO-GC
#### GC
- Tuning the GC
- Conservative
- Tunning Jruby's GC
- 如何避免 performance penalty
#### IO- GC-Profiler
#### Marshal
#### Method
#### Math
#### Module
#### Module-Class
#### NilClass
#### Numeric
#### Numeric-Integer
#### Numeric-Integer-Bignum
#### Numeric-Integer-Fixnum
#### Nummeric-Float
#### Range
#### Regexp
#### Regexp Regular Expressions
- oniguruma（正则表达式引擎）
- Simplifying regexes
- Helper websites
- Alternative Regular Expression Libraries
#### Ruby VM
#### String
#### Struct
#### Symbol
#### Time
#### Thread
- Thread local variables
- Joining on multiple threads
- Controlling Concurrency
#### TrueClass
## Ruby User's Guide
- 略

## 入门总结
基础入门。够用，可以做点东西。
接下来要按照自己的需求来选择学习方向。
一个语言可以做很多事情。不要忘了自己学习的目标。
做web开发。ror
到这里语法完成。
开始特性的学习
自认为要学习的特性
### 类层次结构
```ruby
a = 5
a.class.ancestors
#[Integer, Numeric, Comparable, Object, Kernel, BasicObject]
```
### 单例方法
```ruby
a = 5
def a.hhh
  p 'hhh'
end
a.hhh
```
### self关键字
最常见的用户在Ruby类中声明一个静态方法
### method_missing方法
### 异常处理
```ruby
raise

begin
rescue err1
rescue err2
else
ensure
end
```
### 线程
[Ruby 多线程探索实践与归纳总结](http://www.cnblogs.com/visec479/p/4135154.html)
线程生命周期

1、线程的创建可以使用Thread.new,同样可以以同样的语法使用Thread.start 或者Thread.fork这三个方法来创建线程。

2、创建线程后无需启动，线程会自动执行。

3、Thread 类定义了一些方法来操控线程。线程执行Thread.new中的代码块。

4、线程代码块中最后一个语句是线程的值，可以通过线程的方法来调用，如果线程执行完毕，则返回线程值，否则不返回值直到线程执行完毕。

5、Thread.current 方法返回表示当前线程的对象。 Thread.main 方法返回主线程。

6、通过 Thread.Join 方法来执行线程，这个方法会挂起主线程，直到当前线程执行完毕。
### 鸭子类型
简言之， 对接口编程而不是对实现编程。
### 并发
[ruby服务器并发模型(译）](http://www.jianshu.com/p/24928b958f3c)
- 多进程
- 多线程 时间分片 考虑线程安全
    GIL会锁定除IO之外的所有操作
- 事件循环
大部分应用适合多线程模型
高并发长连接的适合事件循环
访问量不高的多进程就可以了。
也可以复合使用。
### 类型安全
靠自觉把。
### GC
类似JAVA的GC
### Gem
基于Ruby的一些开发工具包
## Rails
一组Gem
### Rack
一个Gem
Ruby Web应用的简单的模块化接口
### sinatra
轻量级ruby web开发框架
## 核心库
学习方式，根据Class学习
暂时不看ruby源码（C）
### Array
### BasicObject
### Binding
进度  
### Class
inherited
### Data
写C扩展
### Dir
文件操作
### ENV
### Encoding
编码是个大问题。
不过UTF-8 会让我们少很多问题。
### Enumerator
很多时候都在默默的使用它
### Exception
### FalseClass
### Fiber
### File
### Float
### GC
### Hash
### IO
### Integer
### Interrupt
### Kernel
### Marshal
### MatchData
### Math
### Method
### Module
### NilClass
### Numeric
### Object
### Proc
### Process
### Queue
### Random
### Range
### Rational
### Regexp
### RubyVM
### Signal
### String
### Struct
### Symbol
### Thread
### Time
### TracePoint
### TrueClass
### Warning
## 标准库
### base64
### benchmark
### bigdecimal
### csv
### erb
### etc
### expect
### fileutils
### find
### gdbm
### io/console
### io/nonblock
### io/wait
### ipaddr
### irb
### json
### logger
### mathn
### matrix
### mkmf
### monitor
### net/ftp
### net/http
### net/imap
### net/pop
### net/smtp
### net/telnet
### open-uri
### open3
### openssl
### optparse
### ostruct
### pathname
### pp
### prettyprint
### prime
### profile
### pfofiler
### pstore
### psych
### pty
### rake
### rdoc
### readline
### resov
### rxmal
### rinda
### rss
### rubygems
### scanf
### set
### shell
### shellwords
### singleton
### socket
### stringio
### strscan
### sync
### syslog
### tempfile
### thwait
### time
### timeout
### tmpdir
### tracer
### tsort
### uri
### yaml
### zlib

# 总结
大部分模块/功能是很少用到的。
20%的模块的使用效率占80%左右（粗略）。
20%中只有20%左右的核心功能在使用。
20%*20% = 4%;
也就是说对于一门编程语言或者IT技能只要掌握了其中4%。就能很好的运用了。
但是通往专家的路上4%又是远远不够的。
值得深思。






















