title: Android ADB  学习
date: 2014-09-13 20:05:45
tags: [Android,ADB]
---

Android ADB  学习
<!--more-->

## APK安装和运行
	adb install  bin/base.apk ; adb shell am start -n cn.xxx.yyyy/	cn.xxx.yyyy.ZzzActivity
## APK卸载
	adb uninstall cn.xxx.yyyy
## 关闭当前APP
	adb shell am force-stop  cn.xxx.yyyy
## 重启APP
	adb shell am force-stop  cn.xxx.yyyy ; adb shell am start -n cn.xxx.yyyy/cn.xxx.yyyy.ZzzActivity
## 重新安装APP
	adb uninstall cn.xxx.yyyy ; adb install  bin/base.apk ; adb shell am start -n cn.xxx.yyyy/	cn.xxx.yyyy.ZzzActivity
## atom打开项目,并且启动
	cd /Users/EC/Documents/workspace/base/ ; atom
## 切换到项目工程文件夹下面
	cd Documents/workspace/base/
## Android 自动编译、打包生成apk(命令行方式)
	gradle方案：
	gradle clean build ;  adb install  build/outputs/apk/base-debug.apk ;adb shell am start -n cn.xxx.yyyy/	cn.xxx.yyyy/	cn.xxx.yyyy.ZzzActivity
	gradle build; adb install  build/outputs/apk/base-debug.apk ;adb shell am start -n cn.xxx.yyyy/cn.xxx.yyyy/	cn.xxx.yyyy.ZzzActivity
## ADB 无线调试##
	手机端安装adbWireless （手机许需要root）
	电脑端配置好 adb(添加都路径中)
	电脑端 adb connect 192.168.100.104
## Android Studio
	安装 安装过程，略去。
	sdk更新 如果之前用过eclipse，sdk更新好了，那就更换sdk的地址。
	折腾去吧。
## 问题总结
	第一次跑android项目的时候，gradle更新不成功怎么办？
		墙的问题。
	本地用命令好构建项目的时候总是跑不同怎么办？
		看看你本地gradle的版本号
		$ gradle -v
		没有装的画自己google去。
		关键点：保证本地gradle和项目中的gradle版本号一致。
		或者自己吧studio里面的用的gradle加到
		$ sudo vi ~/.bash_profile
		在.bash_profile里面加入如下几句
		# gradle
		GRADLE_HOME=/Users/EC/gradle-1.12
		export GRADLE_HOME
		export PATH=$PATH:$GRADLE_HOME/bin
	如何导入eclispe下的Android项目？
		这才是最重要的问题。