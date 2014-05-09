<%--
  Created by IntelliJ IDEA.
  User: el1ven
  Date: 14-5-8
  Time: 上午9:51
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆实例</title>
    <script type="text/javascript" src="js/json2.js"></script>
    <script type="text/javascript" src="js/prototype-1.7.js"></script>
    <script language="JavaScript">
        function validate() {
            //请求地址
            var url = "jsonValidate.action";
            var params = Form.Element.serialize("userName");//取出属性值
            //alert(params);
            //创建Ajax.Request对象，对应发送请求
            var myAjax = new Ajax.Request(url, {
                method: "post",
                parameters: params,
                onComplete: processResponse,
                asynchronous: true
            });
        }

        function processResponse(request) {

            //var fixedResponse = response.responseText.replace(/\\'/g, "'");
            //response.setRequestHeader("Content-type", "application/json");
            //response.setContentType("text/json; charset=UTF-8");
            //request.setHeader("Cache-Control","no-cache");
            //alert("123sdf");
            alert(request.responseText);

            var obj = JSON.parse(request.responseText);//将字符串转化为json


            //alert(obj);
            //console.log(obj);

            document.getElementById("tip").innerHTML = 'ajax + json 校验' + obj.userName;//取出json中对象userName的值
        }
    </script>
</head>
<body>
<span id="tip" style="color:red;font-weight:bold">1234</span>

<p/>
请输入用户名和密码：
<br>

<form name="frm" action="jsonValidate.action" method="post">
    用户名:<input name="userName" id="userName" type="text" onblur="validate();"/>//添加js事件
    </p>
    密码:<input name="password" type="password"/>
    </p>
    <input type="submit" value="注册"/>
</form>

</body>
</html>
