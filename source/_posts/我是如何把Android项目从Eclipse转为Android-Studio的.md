title: 我是如何把Android项目从Eclipse转为Android Studio的
date: 2016-01-12 00:23:07
tags: [Eclipse,Android-Studio]
---

项目历史 > 3年。用的一些库也比较老旧，所以转起来比较费事。
<!--more-->

# 项目概况
简言之 project 只是薄薄的一层壳，主要代码在framework里面。framework引用了一下第三方库和第三方jar文件。

	project---framework---lib/jars
	
# 折腾过程1
思路:利用Eclipse自带的转gradle项目工具开始转换，接下来导入到Android Studio。然后就好了(如何好了,那就好了)。
结果:没有转成成功。主要问题，图片格式问题、jar文件多次被引用问题(主要是support-v4.jar)。
解决方案:
	
	1、图片问题 Python脚本解决。
	2、把引入的第三方库。和我们自己的framework 揉和 在一起。
效果: 编译速度超级慢。

# 折腾过程2
思路:

	1、 在Eclipse上在不改变先用功能的情况下精简代码。发现两个库其实不需要support-v4.jar。
	2、 规范项目 优化 第三方库 AndroidManifest.xml的写法。
	3、 利用Eclipse自带的转gradle项目工具开始转换。

结果: 仍然有几个库同时引用了support-v4.jar。解决方法，把support-v4.jar 单独做成一个 module。问题解决。

# 收获
总体来说 Android-Studio优于Eclipse。虽然图片格式要求更严格，但是这有利于提高app的品质,既然google已经放弃了Eclipse，我们也该试试Android-Studio到底方便在哪里了。

