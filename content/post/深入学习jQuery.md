---
title: 深入学习jQuery
date: 2017-03-18 10:33:59
tags: [jQuery]
---

深入学习jQuery
<!--more-->
# 总体架构
- 入口模块
    - jQuery对象
    - jQuery()
- 功能模块
    - 属性操作
    - 时间系统
    - Dom遍历
    - Dom操作
    - 样式操作
    - 异步请求
    - 动画
- 底层支持模块
    - 工具方法
    - 回调函数列表
    - 异步队列
    - 浏览器功能测试
    - 数据缓冲
    - 队列
    - 选择器
#思考：
如果你设计这样的一个库，你会怎么设计？
入口 函数
入口 功能分组 提取通用函数结构做底层支持
分层的思想。
#思考：
关于构造函数、原型、继承等基础知识。知道多少？

# 入口模块
12个分支

# 选择器表达式
- 块表达式
    - 简单表达式 ID CLASS TAG
    - 属性表达式 ATTR
    - 伪类表达式 PSEUDO
        - 位置伪类
        - 子元素伪类
        - 内容伪类
        - 可见伪类
        - 表单伪类
- 块间表达式
    - > 父子关系
    - "" 祖先后台管理
    - "+" 紧挨着的兄弟元素
    - "~" 之后的所有兄弟元素

# jQuery静态属性和方法
- .noConflict([removeAll]) 
    释放jQuery对全局变量$、jQuery的控制权。
- .isReady
- .readyWait
- .holdReady()
- .ready()
- .bindReady()
- .isFunction(obj)
- .isArray(obj)
- .isWindow(obj)
- .isNumeric(value)
- .type(obj)
- .isPlainObject(object)
- .isEmptyObject(object)
- .parseJSON(json)
- .parseXML(data)
- .globalEval(code)
- .camelCase(string)
- .nodeName(elem, name)
    检查DOM元素的节点名称（即属性 nodeName）
    与指定的值是否相等，检查时忽略大小写
- .trim(str)
- .each(collection, callback(indexInArray, valueOfElement))
    通用的遍历迭代方法，用于无缝地遍历对象和数组
- .makeArray(obj)
    将一个类数组对象转换为正真的数组
- .inArray(value, array[,fromIndex])
    在数组中查找指定的元素并返回其下标，未找到返回-1
- .merge(first, second)
- .grep(array, function(elementOfArray, indexInArray)[,invert])
- .map(arrayOrObject, callback(value, indexOrKey)
- .guid
    全局计数器
- .proxy(function, context)
- .error(msg)
- .noop()
- .now()
- .access()
    为集合中的元素设置一个或多个属性值，或者读取第一个元素的属性值
- .usMatch(ua)
- .browser
- .sub()
    创建一个新的jQuery副本。

# 底层支持模块
## #Sizzle
> 纯JS实现的CSS选择器引擎。可以单独使用。

    浏览器支持querySelectorAll(),调用该方法，不支持，模拟该方法的行为。
## 异步队列 Deferred Object
> 用于实现异步任务和回调函数的解耦
> 为ajax模块，队列模块、ready模块提供基础功能

jQuery.Callbacks(flags)
flags:
once 确保回调函数列表只能被触发一次
memory 记录上一次触发回调函数列表时的参数，之后添加的任何回调函数都将用记录的参数值立即调用。
unique 确保一个回调函数只能被添加一次，回调函数中没有重复值
stopOnFalse 当某个回调函数返回false时中断执行。
## createFlags(flags)


数据缓存
队列
浏览器功能测试
# 功能模块
属性操作
事件系统
dom遍历
dom操作
CSS操作
异步请求
动画
# 属性操作
- HTML属性操作
- DOM属性操作
- 类操作
- 值操作
