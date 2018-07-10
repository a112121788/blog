title: Android-Button
date: 2016-04-10 15:39:00
tags: [android, view]
---

TextView的伪装。
<!--more-->

# Button
Button: 源码
``` java
@RemoteView
public class Button extends TextView {
    public Button(Context context) {
        this(context, null);
    }

    public Button(Context context, AttributeSet attrs) {
        this(context, attrs, com.android.internal.R.attr.buttonStyle);
    }

    public Button(Context context, AttributeSet attrs, int defStyleAttr) {
        this(context, attrs, defStyleAttr, 0);
    }

    public Button(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
    }

    @Override
    public CharSequence getAccessibilityClassName() {
        return Button.class.getName();
    }
}
```

# 个人总结
Button: 就是TextView的伪装。可点击的Button（TextView本来就可以点击）

# 参考链接
Android Button
https://developer.android.com/intl/zh-cn/reference/android/widget/Button.html