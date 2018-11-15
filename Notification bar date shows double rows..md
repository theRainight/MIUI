>* 在MiuiSystemui.apk中搜索quick_status_bar_expanded_header.xml 
>* 在quick_status_bar_expanded_header.xml中搜索`android:layout_alignTop` 
>* 将第一个`android:layout_alignTop`改为`android:layout_alignBottom` 
>* 另外主题模块com.android.systemui中添加代码`<string name="status_bar_clock_date_format_12">EEEE aa 
M月d日 N月e  t</string>`
