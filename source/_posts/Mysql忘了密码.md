title: Mysql忘了密码
date: 2016-12-28 08:37:36
tags: [Mysql]
---

总会有办法的。大不了重新安装。
<!--more-->

# 停止 Mysql 服务
stop mysql service
# 切换身份
```shell
cd /usr/local/mysql/bin/
sudo su
```
# 修改密码
回车后输入以下命令来禁止 mysql 验证功能 ./mysqld_safe --skip-grant-tables &
```shell
 ./mysql
FLUSH PRIVILEGES;
SET PASSWORD FOR 'root'@'localhost' = PASSWORD('你的新密码');
```
