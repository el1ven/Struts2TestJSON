第二个例子是利用struts2+ajax的demo, 首先改正了一个很重要的错误，就是之前写完代码总是报服务器内部错误，但是丝毫没有头绪，后来发现是jar包的版本不对应，我就上百度网盘上各种找jar包下载，后来还是status500,服务器内部错误，最后选择了在struts2官方网站上把所有最新版的jar包下载下来然后这个项目要用的统统存到lib文件夹里面，然后在module settting中再添加一遍jar包并fix error即可。
接下来是为了能让struts2处理json所要准备的：
首先下载json-plugin.jar完成插件的安装，然后下载json2.js, prototype.js, 其实用jquery.js处理ajax更加简便。
这个项目的目的：虽然没有连接数据库，但是完成了用户名验证的初步尝试，运用onblur触发事件，当鼠标远离焦点的时候，就会异步调用ajax,如果用户名是admin的话，就提示系统中已经有这个名字了，别的名字就OK。
代码之类的就不赘述了，github上应该上传了完整版，说一下注意的地方，在这个项目配置struts.xml的时候package需要改成extends = "json-default" 然后result的type = "json" 这样就基本配置完了， 可以用struts2 处理json数据了。