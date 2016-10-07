title: wxpython学习 
date: 2016-10-03 10:50:50
updated: 2016-10-03 10:50:54
tags: 
-  wxpython学
- 学习
---

template 
<!--more-->

# 目录
[TOC]
# 安装
```shell
python get-pip.py
sudo -H pip install wx
pip install wxpython-phoenix
```
# Hello World

```python
#! /usr/bin/python
# coding: utf8
# demo.py by peng

import wx  # 1

class App(wx.App):  # 2
    def OnInit(self):  # 3
        frame = wx.Frame(parent=None, title='Hello World')
        frame.CreateStatusBar()
        frame.Show()
        return True

app = App()  # 4
app.MainLoop()  # 5
```

# Demo
```python
#! /usr/bin/python
# coding: utf8
# demo.py by peng

import wx  # 1
import os

# app全局设置
APP_NAME = "Hello World"
APP_DES = "App Des ..........."
# 窗口大小
APP_SIZE = (400, 300)


class MainWindow(wx.Frame):  # 2
    def __init__(self, parent, title):  # 3
        self.dirname = ''
        wx.Frame.__init__(self, parent, title=title, size=APP_SIZE)
        self.CreateStatusBar()  # 状态栏

        # 文本编辑器
        # self.control = wx.TextCtrl(self, style=wx.TE_MULTILINE)

        # text
        # panel = wx.Panel(self)
        # self.quote = wx.StaticText(panel, label="Your quote:", pos=(100, 100))

        # button
        # clearButton = wx.Button(self, wx.ID_CLEAR, 'Clear')
        # self.Bind(wx.EVT_BUTTON, self.OnAbout, clearButton)

        # textfield
        textField = wx.TextCtrl(self)
        # self.Bind(wx.EVT_TEXT, self.OnChange, textField)
        # self.Bind(wx.EVT_CHAR, self.OnKeyPress, textField)



        # 菜单
        filemenu = wx.Menu();

        menuOpen = filemenu.Append(wx.ID_OPEN, "&打开", "打开")
        menuAbout = filemenu.Append(wx.ID_ABOUT, "&关于", "关于")

        self.Bind(wx.EVT_MENU, self.OnOpen, menuOpen)
        self.Bind(wx.EVT_MENU, self.OnAbout, menuAbout)

        menuBar = wx.MenuBar()
        menuBar.Append(filemenu, "&文件")

        self.SetMenuBar(menuBar)

        # 显示
        self.Show()
        return None

    def OnOpen(self, event):
        dlg = wx.FileDialog(self, "选择文件", self.dirname, "", "*.*", wx.FLP_OPEN)
        if dlg.ShowModal() == wx.ID_OK:
            self.filename = dlg.GetFilename()
            self.dirname = dlg.GetDirectory()
            f = open(os.path.join(self.dirname, self.filename), 'r')
            self.control.SetValue(f.read())
            f.close()
        dlg.Destroy()

    def OnAbout(self, event):
        # MessageDialog
        dlg = wx.MessageDialog(self, APP_DES, APP_NAME, wx.OK)
        dlg.ShowModal()
        dlg.Destroy()


app = wx.App(False)  # 4
frame = MainWindow(None, APP_NAME)
app.MainLoop()  # 5
```
# 官方教程
> <https://wiki.wxpython.org/>
