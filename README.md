# XFTimeProcess
### 简介
对信息发布的时间进行处理的一个封装.  例如微博发布时间的显示.  
### 使用方法

1. 工程中导入`NSDate-Extension.swift`文件
2. 在需要对时间处理的地方直接使用
	
	```
	let createText = NSDate.createrDateString(这里传入原始创建时间)
	```
这里得到的`createText`就是已经处理好的显示内容

### 注意点: 
如果你需要处理的时间格式跟我这里测试的有差别, 可对时间格式进行适当调整再谁用, 毕竟不是所有的服务器获得的信息创建时间都一样.  如下图所示:

![](http://o9xffirbq.bkt.clouddn.com/Snip20160815_34.png)

	

## 我的个人博客
http://devxiaofan.com/


