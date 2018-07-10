---
title: Weex学习 
date: 2016-07-02 20:09:09
tags: [template]
---

Weex学习
<!--more-->

# Weex
官方介绍
## Write Once Run Everywhere
100% code reuse across support platforms 
keep better consistent interface, 
save more costs in development
## Native Speed in Native Platform
weex render code in native widget in Android&iOS 
preserve the quality of user experience on critical platform
# Android学习
## clone code
```shell
git clone git@github.com:alibaba/weex.git
```
## init env and project
- Install Node.js 4.0+ Under project root
    - npm install, install project
    - ./start
- Install Android Environment
    - Run playground, In Android Studio
    - Open android/playground
    - In app/java/com.alibaba.weex/WXMainActivity, modify CURRENT_IP to your local IP
    - Click  (Run button)