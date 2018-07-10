---
title: Android-EditText
date: 2016-04-10 11:22:00
tags: [android, view]
---

可编辑的TextView
<!--more-->

# EditText
EditText: EditText is a thin veneer over TextView that configures itself to be editable.
``` java
    @Override
    protected boolean getDefaultEditable() {
        return true;
    }
```

# 个人总结
EditText是TextView的伪装。可编辑的TextView


# 参考链接
Android EditText
https://developer.android.com/intl/zh-cn/reference/android/widget/EditText.html