---
title: jQuery属性操作
date: 2017-03-18 10:30:14
tags: [jQuery]
---

jQuery属性操作
<!--more-->
# 属性操作
- HTML属性操作
    对文档中的属性进行读取、设置和移除操作
    属性名是小写的连词符式字符串，属性值也总是字符串
- DOM属性操作
    DOM元素的属性进行读取、设置和移除操作。
    属性名：驼峰式字符串，属性值可以式任意类型
- 类样式操作
    对DOM属性className进行添加、移除操作。
- 值操作
    DOM属性value进行读取和设置操作。

# 属性操作模块的公开方法
HTML属性操作
- .attr(name, value)
- .removeAttr(name)
DOM属性操作
- .prop(name, value)
- .removeProp(name)
类操作
- .addClass(className)
- .removeClass([className])
- .toggleClass([className][, switch])
- .hasClass(selector)
值操作
- .val(value)
# DOM遍历模块的公开方法
- .parent([selector])
- .parents([selector])
- .parentsUntil([selector][, filter])
- .next([selector])
- .prev([selector])
- .nextAll([selector])
- .nextUnit([selector][, filter])
- .prevUnitl([selector][, filter])
- .siblings([selector])
- .children([selector])
- .contents()

DOM遍历模块的完整调用链：
公开方法 》 遍历函数 》 工具函数 》 原声属性


#DOM操作
- 插入元素
    - 在节点内部插入原属
    - 在节点外部插入元素
- 删除元素
- 复制元素
- 替换元素
- 包裹原属
原生方法
- insertBefore()
- appendChild()
- removeChild)()
- cloneNode()
- replaceChild()
