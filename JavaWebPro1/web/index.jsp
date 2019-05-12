<%--
  Created by IntelliJ IDEA.
  User: 9999
  Date: 2019/5/9
  Time: 19:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
    <script type="text/javascript">
        function doLogout(){
            //访问LogoutServlet注销当前登录的用户
            window.location.href="${pageContext.request.contextPath}/servlet/LogoutServlet";
        }
    </script>
</head>
<body>
<h1>欢迎来到ZYL的菜鸟网站</h1>
<hr>
<c:if test="${user==null}">
    <a href="${pageContext.request.contextPath}/servlet/RegisterUIServlet" target="_blank">注册</a>
    <a href="${pageContext.request.contextPath}/servlet/LoginUIServlet">登陆</a>
</c:if>
<c:if test="${user!=null}">
    欢迎您：${user.userName}
    <input type="button" value="退出登陆" onclick="doLogout()">
</c:if>
</hr>
</body>
</html>
