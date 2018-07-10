---
title: 移动端token颁发机制 
date: 2016-06-09 16:49:19
tags: [移动端, token, 颁发机制]
---

一个工具性或者调用公共api的移动端api 无需考虑这个事情。但是现在的app大部分是需要用户系统的。所以还是要有用户系统。
移动端的用户系统有一个很重要的设计原则，直到必要的时候才要求用户登录。但是没有登录前每个用户还是可能不一样的。所以有必要理顺一下用户系统。算是给自己做移动开发这两年一个交代。
<!--more-->

# 用户系统
user_device
```table
id  | device_num  |  os_type   |  os_version  |  created_at
1  |   xxax | android | 5.1| 2016-06-09
```
user_info
```table
id | user_group_id | user_role_id | nickname | created_at
1 | 1                       | 1                    | ""              |2016-06-09 17:06:02 
```
user_device_user_info
```table
user_device_id | user_info_id
1| 1
```
user_oauth_token_order
```table
user_info_id | access_token | created_at
1                    |1                     |2016-06-09 17:09:16
```
- - - -
## 生成token
1、最基本的原则： 唯一
例如 user_info_id + Time.now  => md5
为了防止恶意用户 api请求需要验证

 device_num  |  os_type   |  os_version   apikey  call_id  sig

user_device表 user_info表  user_device_user_info表 user_oauth_token_order 表

## 用户名登录

1. 登录时如果系统里面有旧的已注册用户 user_oauth_token_order的user_info_id 切换为旧的。完成登录

2. 登录时如果没有 让用户去注册。  其实就是完善当前匿名帐号的用户名。密码信息。
3. 然后继续登录。 也就是当前匿名用户。提升为注册用户。

4. 登录时如果系统里面没有旧的用户 user_oauth_token_order的token 切换为本地的。完成登录

5. 退出登录时： 清理token。 重新生成新的token。
注：应该画流程图的。

## API权限 
apikey call_id sig(apikey call_id + api_secrete md5) 通用方法

## 结语
真正的用户系统很复杂，这只是个基本版。
假定单个后台系统 单个app。 
