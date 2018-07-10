title: Node学习
date: 2016-12-13 20:39:41
updated: 2016-12-13 20:39:44
tags:
- node
---

node....
<!--more-->

[TOC]
# 创业公司里面的node工程师
## 前端
### 传统前端
创业 == 没人 + 没钱

- 迭代节奏 
- 工程师能力
    - 呈现正态分布
    - 
- 匹配速度

**node擅长的**
- 提高并发数。小心后期风险
- 密集CPU运算。 弱 
- 高安全高可靠行。 弱
- 内存精密控制及释放。弱
**历史包袱**
callback 废弃
promise generator await/async
**跟进升级**
痛并快乐着

## 后台
TODO

## app
TODO

# Node学习
## demo
```js
const http = require('http');

const hostname = '127.0.0.1';
const port = 3000;

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.end('Hello World\n');
});

server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});
```
## Commonjs规范

## 模块
模块化开发。 低耦合。
- 创建
- 导出
- 加载
- 导入
## Node.js API

## URL
uri
## HTTP
请求方法
状态码
1xx
2xx 200
3xx 
4xx 400 401 403 404
5xx 500 503 502
## HTTP进阶
回调
同步／异步
IO
单线程／多线程
阻塞／非阻塞
事件
事件驱动
基于事件驱动的回调
事件循环
## HTTP模块
支持更多特性
不缓冲请求和相应
处理流相关
- todo 查看原生http模块
##  Request
## Stream
## 
# Node建网站
# init
yarn init
yarn add express
yarn add jade
yarn add mongoose
npm install bower -g
bower install bootstrap

 搭建网站不是问题，问题是搭建网站做什么，这才是目的。
所以。建立网站不是目的。
看看自己的需求。自己的想法。自己想做什么。




