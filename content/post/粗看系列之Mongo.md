---
title:  粗看系列之Mongo
date: 2017-04-05 01:41:24
updated: 2017-04-05 01:47:22
tags: 
- 粗看系列
- Mongo
---

 粗看系列之Mongo
<!--more-->

## NoSQL
NoSQL = Not Only SQL

优点：
- 高可扩展性
- 分布式计算
- 低成本
- 架构的灵活性，半结构化数据
- 没有复杂的关系

缺点：
- 没有标准化
- 有限的查询功能
- 最终一致是不直观的程序

## MongoDB
C++编写， 机遇分布式文件存储的开源数据库系统。

起始时间 2007年10月

安装使用（macOS）
```shell
brew install mongo
```

**数据类型**
- String
- Integer
- Boolean
- Double
- Min/Max keys
- Arrays
- Timestamp
- Object
- Null
- Symbol
- Date
- Object ID
- Binary Data
- Code
- Regular expression

一些基本命令
```shell
use dbname
db
show dbs
db.dropDatabase() # 删除当前数据库
db.collection.drop()
show tables/collections
db.tablename.drop()
db.col.insert(document)
db.collection.update()
db.collection.insert()
db.collection.save()
db.collection.remove()
db.COLLECTION_NAME.find()
db.COLLECTION_NAME.ensureIndex({KEY:1})
db.COLLECTION_NAME.aggregate(AGGREGATE_OPERATION)
```

分片
备份
恢复







