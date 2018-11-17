
（1）反编译刚生成的services.jar文件，可以用电脑反编译，也可用手机安装的Apktool X.apk软件，此处我就用手机反编译~~获得services_dec文件夹

（2）re管理器打开services_dec文件夹，依次找到smali\com\android\server\policy文件夹下的MiuiGlobalActions$1.smali，下载本教程附件的“MiuiGlobalActions$1.smali”，替换之。

（3）打开Apktool X.apk软件，长按services_dec文件夹，选择“编译”，生成services_dec.jar文件，修改命名为“services.jar”，这就是我们修改的最终文件。

（4）将刚生成的services.jar文件利用re管理器替换到/system/framework文件夹，修改权限为0644（rw-r-r），可以删除/system/framework/oat/arm64文件夹下的services.odex文件，没有关系；同时，下载本教程附件的“powermenu”文件，利用re管理器放在\system\media\theme\default文件夹里，修改权限为0644（rw-r-r），重启手机，教程完成！

（5）第（4）步附加，其实就是services.jar和powermenu这2个文件掌握高级电源重启，下载附件“小米6-添加高级重启-MIUI9 7.10.26开发版.zip”，这个卡刷包是我做的，所以教你们做卡刷包~~不想学可以跳过哦~~~

（ⅰ）请下载本教程附件中的ZArchiver Pro.apk（压缩管家），目前手机上最好的压缩软件，附件已为你们提供。

（ⅱ）用ZArchiver Pro.apk打开“小米6-添加高级重启-MIUI9 7.10.26开发版.zip”，不是解压哦，点击“查看”

（ⅲ）再依次打开system\framework\services.jar，选择右下角的加号，添加我们刚生成的services.jar；以及打开system\media\theme\default\powermenu，选择右下角的加号，添加powermenu。其实在“小米6-添加高级重启-MIUI9 7.10.26开发版.zip”中，powermenu有的话就不要添加，添加了也是原来一样的文件。

（ⅳ）最后就生成了新的对应你那个miui版本的“小米6-添加高级重启-MIUI9 7.10.26开发版.zip”，通过第三方recovery刷入即可。有时间你可以制作更多其他miui版本的卡刷包，供其他人使用，就是因为我QQ群人员太懒，都不愿意去做，所以写了这个教程给你们。懒鬼一个，希望你们不是，呵呵~~~

2、复杂方法

其实就是要你们自己对smali\com\android\server\policy文件夹下的MiuiGlobalActions$1.smali添加代码，其实也不难，我都会把添加位置告诉你们，这个方法是最安全的哦，因为可能每个MIUI版本MiuiGlobalActions$1.smali文件有可能不同，但是我对比发现，99.99%是一样的。为了安全起见，我还是把这个方法告诉你们吧，免得我被喷。

（1）我们在上面简单方法获得MiuiGlobalActions$1.smali文件，电脑上用notepad++打开此文件，手机上打开也可以，需要专门的文本软件吧，比如MT文件管理器，你们自己找一个。

（2）然后搜索“shutdown”，并在上一行添加一段代码，代码见附件。

（3）代码添加好后保存MiuiGlobalActions$1.smali文件，然后回编译servers这个文件夹，同简便方法的（3），获得servers.jar，然后直接替换services.jar和powermenu这2个文件到相应文件夹，记得修改权限；或者下载“小米6-添加高级重启-MIUI9 7.10.26开发版.zip”，把servers.jar替换进zip压缩包里面，千万不能解压放进去然后压缩。

第二个主题：删除内置app不卡米功能（包括删除小米全家桶、安全中心，系统更新等）

为什么我要说第二个主题，是因为也是修改services.jar这个鬼东西，所以一起写吧~~总共有3种方法，分别介绍给大家，我一般用第2种，推荐。

1、第一种方法

（1）在第一个主题的简便方法的（1）基础上，打开services_dec文件夹，依次找到smali\com\miui\server文件夹下的SecurityManagerService$1.smali，利用MT管理器直接对它编辑，

搜索com.android.updater，把这串英文换成com.android.bluetooth

搜索com.miui.securitycenter，把这串英文换成com.android.bluetooth

搜索com.xiaomi.market，这串英文换成com.android.bluetooth

（2）保存修改！！删除SecurityManagerService$1.smali.bak，不要忘记删除了哦~~

（3）打开Apktool X.apk找到services_odex文件夹，点击选择编译，再等一会，就会生成一个services.dex！这样就完美的修改好了！

（4）然后删除原来提取的services.odex，再点击services.dex选择打包进同名jar文件,再等一会你会发现services.jar的文件大小变大了！然后再点击变大后的services.jar，选择生成odex.等一会就成功了！这个就是为什么要删除官方services.odex的原因呀！

（5）然后把新生成的services.odex替换进系统就行了！而新生的services.jar不需要替换的！

2、第二种方法

（1）在第一个主题的简便方法的（1）基础上，打开services_dec文件夹，依次找到smali\com\miui\server文件夹下的SecurityManagerService.smali（这个文件同上面不一样哦），利用MT管理器直接对它编辑

（2）搜索.method private checkSystemSelfProtection(Z)V

（3）删除这3行代码:

new-instance v0, Lcom/miui/server/SecurityManagerService$1;

invoke-direct {v0, p0, p1},

Lcom/miui/server/SecurityManagerService$1;-><init>(Lcom/miui/server/SecurityManagerService;Z)V

invoke-virtual {v0}, Lcom/miui/server/SecurityManagerService$1;->start()V

（4）修改好后回编译，就ok了（参照方法1的2-5步骤）

3、第三种方法

（1）定位SecurityManagerService$1.smali，进行编辑

（2）修改验证函数run 直接返回空（利用搜索找到.method public run，改成下面的样子）

.method public run()V

.registers 9

.prologue

return-void

.end method

（3）定位SecurityManagerService.smali，进行编辑，去除验证

（4）利用搜索找到.method public run，改成下面的样子：

1）下面这个是app签名校验函数

.method private checkAppSignature([Landroid/content/pm/Signature;Ljava/lang/String;Z)V

.registers 13

.param p1, "validSignatures" # [Landroid/content/pm/Signature;

.param p2, "pkgName" # Ljava/lang/String;

.param p3, "checkEnabled" # Z

.prologue

return-void

.end method

2）下面这个是平台签名校验

.method private checkPlatformSignature([Landroid/content/pm/Signature;)V

.registers 9

.param p1, "signatures" # [Landroid/content/pm/Signature;

.prologue

return-void

.end method

（5）修改好后回编译，就ok了（参照方法1的2-5步骤）
