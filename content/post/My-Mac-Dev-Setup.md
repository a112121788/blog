---
title: My-Mac-Dev-Setup
date: 2015-12-11 00:27:05
tags: [mac,dev,setup]
---

My-Mac-Dev-Setup
<!--more-->

# iOS

	Xcode
	SimPholders

# Android

	AndroidStudio
	eclipse
	adt sdk  ndk
	Genymotion
	VirtualBox

# 其他

	node coffee
	Sublime Text
Sublime Text 3
``` bash
import urllib.request,os; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); open(os.path.join(ipp, pf), 'wb').write(urllib.request.urlopen( 'http://sublime.wbond.net/' + pf.replace(' ','%20')).read())
```
Sublime Text 2
``` bash
import urllib2,os; pf='Package Control.sublime-package'; ipp = sublime.installed_packages_path(); os.makedirs( ipp ) if not os.path.exists(ipp) else None; urllib2.install_opener( urllib2.build_opener( urllib2.ProxyHandler( ))); open( os.path.join( ipp, pf), 'wb' ).write( urllib2.urlopen( 'http://sublime.wbond.net/' +pf.replace( ' ','%20' )).read()); print( 'Please restart Sublime Text to finish installation')
```
	Sublime Text插件：CoffeeCompile Better CoffeeScript
	SourceTree
	Sip
	Snip
	rvm
	brew
	翻墙
	chrome
	dash
	输入法、迅雷
	qq电脑管家

# 部分文档

* <http://www.w3school.com.cn/js/>
* <http://coffeescript.org/>
* <http://git.oschina.net/progit/>
* <https://nodejs.org/en/docs/>
* <https://developer.apple.com/>
* <https://developer.android.com/index.html>