 webview控件使用小结：
 1、在storyboard中添加webView控件，并绑定到ViewController
 2、设置webView事件处理代理UIWebViewDelegant
 3、指定加载链接，即生产NSRULRequst对象
 4、加载链接
 
 遇到问题：
 1、webview显示内容不全
    将之前对webView控件删除，重新添加控件，并将WebView的scaling属性勾上。
 2、添加Toolbar工具栏，点击其子控件无响应。
    原因：没有打开toolbar的用户相应事件，将其interaction属性勾上即可

