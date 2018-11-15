## 下拉通知栏显示天气
>需要反编译MiuisystemUI.apk
>用到的工具[MT管理器2.0](https://www.coolapk.com/apk/bin.mt.plus) [ApktoolX](http://t.cn/EADQEOU) 

* 1.用MT管理器2.0将MiuisystemUI.apk里的classes.dex解压到手机存储
* 2.用ApktoolX反编译classes.dex
* 3.将Notification bar shows weather中的4个与weather有关的smali文件放入编译后的classes.dex文件夹所对应的目录
* 4.回编classes
* 5.在MiuisystemUI.apk对应目录添加代码
