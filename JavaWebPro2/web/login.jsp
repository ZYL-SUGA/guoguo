<%--
  Created by IntelliJ IDEA.
  User: 9999
  Date: 2019/5/9
  Time: 19:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登陆</title>
</head>
    <style>
        body{
            background-color: hotpink;
            background-image:url("img/bt2113.jpg");
            background-repeat:no-repeat;
            background-size: cover;
        }
        .head{
            text-align:center;
        }
        .login{
            width:300px;
            display:flex;
            flex-direction:column;
            margin:100px auto;
            padding:20px;
        }
    </style>

<body>

<form action="${pageContext.request.contextPath }/servlet/LoginServlet" method="post" class="login">
    <h1 class="head">PURPLE HEART</h1>
    用户名：<input type="text" name="username"><br/>
    密码：<input type="password" name="password"><br/>
    <input type="submit" value="登陆">
</form>
</body>
</html>
