---
title: SQL
date: 2017-03-18 10:47:43
tags: []
---

SQL
<!--more-->
# SQL
>《MYSQL技术内幕： SQL编程》

## 第一章 SQL编程
SQL编程的三个阶段
1. 面向过程化的SQL编程阶段。
2. 面向集合的SQL编程阶段。
3. 融合的SQL编程阶段。

数据库按应用类型分类：
1. OLTP
2. OLAP

MySQL数据库中一些常用的存储引擎
* InnoDB(支持事务，主要目标，OLTP)
    特点： 行锁设计、支持外键】非锁定读。MVCC
* MyISAM
    特点： 不支持事务、表锁设计、支持全文索引 OLAP

## 第二章 数据类型
SQL_MODE
查看当前情况
```mysql
 SELECT @@global.sql_mode\G;
```

## 第三章 查询处理
逻辑处理的11个步骤
3个过滤处理器 ON、WHERE、HAVING

**物理查询会根据索引进行优化**

## 第四章 子查询
ANY IN

## 第五章 联接与集合操作


## 第六章 聚合与旋转操作
## 第七章 游标
## 第八章 事物编程
## 第九章 索引
## 第十章 分区











