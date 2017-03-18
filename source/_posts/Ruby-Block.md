title: Ruby-Block
date: 2017-03-18 10:31:23
tags: [Ruby, Block]
---

block
<!--more-->
# Proc类
yield无法处理的问题
- 想把这个block传递给另外一个方法
- 想把这个块转换为一个Proc

demo 把一个块传递给另外一个方法
```ruby
def math(a, b)
  yield(a, b)
end

def teach_math(a, b, &operation)
  p "math："
  p math(a, b, &operation)
end

teach_math(2,3){|x,y| x * y}
```
注释：
&的含义，这是一个Proc对象，我想把它当做一个块来使用。

使用lambda()创建的Proc称为lambda，而使用其他方式创建的则简单称为proc.

proc于lambda的两个重要区别：
1. return
2. 参数检验

lambda中 return仅仅表示从这个lambda中返回
proc中，从定义proc的作用域中返回。

lambda的实用能力比proc差

其实里面 proc lambda 也一团糟。

\>= ruby 1.9
`p = ->(x) {x +1}`

lambda在定义它的作用域中执行（闭包的特性）
Method对象会在它自身所在对象的作用域中执行。

Method#to_proc可以把Method对象转换为Proc对象。

# 可调用对象小结
可调用对象是可执行的代码片段，它们有自己的作用域。

块： block 在定义它们的作用域中执行。
proc： Proc类的对象，跟块一样，它们也是定义自身的作用域中执行。
lambda: 也是Proc类的对象，
方法： 绑定于对象，在所绑定对象的作用域中执行。它们也可以与这个作用域解除绑定,再重新绑定到另一个对象的作用域上。



















