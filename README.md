# MacHUD
a HUD for Mac Appkit
在AppKit中使用的消息显示组件

曾经用过其他组件，但是不好用或有Bug，干脆自己写一个，写死的东西比较多，不过修改起来也很容易。

特点：自适应文字长度，支持有图标和无图标两种显示方式，支持短暂显示和持久显示。

使用方法：

1、App启动时首先调用
   [FNHUD setup];

2、使用FNHUD的show系列方法进行消息展示
   [FNHUD showMessage:@"Okay" inView:self.view];
   
除了showLoading方法需要手工调用hide方法进行隐藏，其他的消息均会自动消失

展示效果：

[点击查看 成功消息](https://www.jianguoyun.com/p/DVIOU3IQ8-iEBhjHnEE)
[点击查看 失败消息](https://www.jianguoyun.com/p/DTuGM6kQ8-iEBhjPnEE)
[点击查看 loading消息](https://www.jianguoyun.com/p/DduUUhcQ8-iEBhjTnEE)
[点击查看 超长消息](https://www.jianguoyun.com/p/DcrBwAYQ8-iEBhjUnEE)


如何引入：

将FNHUD.h和FNHUD.m引入您的工程，还有yy_hud_fail.png、yy_hud_success.png这些资源文件。
