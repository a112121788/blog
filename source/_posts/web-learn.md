title: web-learn
date: 2015-12-12 22:30:00
tags: [web,learn]
---

web-learn
<!--more-->

# 如何快速正确的安装 Ruby, Rails 运行环境
    https://ruby-china.org/wiki/install_ruby_guide
rails new . --git --database=postgresql

# nojde.js 文件服务器
```javascript
// 静态文件服务器
var http = require('http');
var url = require('url');
var fs = require('fs');

start();

function start(){
    var server = http.createServer(onRequest);
    server.listen(8000);
    
    function onRequest(request,response){
            client_path = decodeURI( request.url );
            server_path = '.' + client_path;

            fs.readFile( server_path, 'binary', function(err,file){
            if(err){
                if( err.errno == -21 ){
                    //是文件目录
                    var content = fs.readdirSync( server_path );
                    content = content.map(function( filename ){
                        var href = client_path + "/" +　filename;
                        href = href.replace(/\/+/g,'/');
                        return ( "<a href='" + href + "'>" + filename + "</a>" );
                    }).join('<br/>');

                    return resHtml(response, content);
                }

                return res(response,200,'text/plain',JSON.stringify(err))
            }else{
                var type = {
                    '' : 'text/html',
                    'html': 'text/html',
                    'css': 'text/css',
                    'js' : 'text/javascript',
                    'appcache': 'text/appcache',
                    'png':'image/png',
                    'jpg':'image/jpg',
                    'jpeg':'image/jpeg'
                }[request.url.replace(/^.*\./,'')];

                res(response, 200, type ,file ,true)
            }
        });
    }
}

function resHtml(response, content){
    content =   "<!doctype>\
                <html>\
                <head>\
                    <meta charset='utf-8'>\
                </head>\
                <body>"
                    + content +
                "</body>\
                </html>\
                ";
    res(response, 200, 'text/html' ,content);
}

function res(response,code,content_type,content,isBinary){
    response.writeHead(code, {'Content-Type':content_type});
    isBinary ? response.write(content, 'binary') : response.write(content);
    response.end();
}
```
