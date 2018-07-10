---
title:  粗看系列之Redis
date: 2017-04-05 01:41:24
updated: 2017-04-05 01:45:49
tags: 
- 粗看系列
- Redis
---

Redis
<!--more-->
# Redis

# 数据类型
- 字符串
- 哈希
- 列表
- 集合
- 可排序集合

```
 redis-cli -h host -p port -a password
```
# 基本命令
```shell
DEL key
DUMP key
EXIST key
EXPIRE key timestamp
PEXPIRE key milliseconds
KEY pattern
MOVE key db
PERSIST key
TYPE key
```


[文档](http://www.redis.cn/documentation.html)
