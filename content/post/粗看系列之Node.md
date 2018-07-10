title:  粗看系列之Node.js
date: 2017-04-05 01:41:24
updated: 2017-04-05 01:41:25
tags: 
- 粗看系列
- Node.js
---

Node.js
<!--more-->
# 粗看系列之Node

# Web服务器
上代码
```node
const http = require('http');
const hostname = '127.0.0.1';
const port = 3000;
const server = http.createServer((req, res)=> {
  res.statuCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.end('Hello World');
});

server.listen(port, hostname, () => {
    console.log(`Server running at http://${hostname}:${port}/`);
});
```
## Buffer
Node.js的全局对象，可以直接用。

Buffer 类是一个用于处理二进制数据的全局对象，Node.js 提供了多种方法来创建 Buffer 实例。

## 插件
C/C++ V8
## child_process
## 加密 crypto 
openssl的哈希、HMAC、加密、解密、签名和验证函数
## debug



