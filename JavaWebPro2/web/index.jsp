<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        function doLogout() {
            //访问LogoutServlet注销当前登录的用户
            window.location.href = "${pageContext.request.contextPath}/servlet/LogoutServlet";
        }
    </script>
    <style>
    body{
        background-image:url(img/one.png);
        background-repeat: no-repeat;
        background-size: cover;
    }
</style>
</head>

<body>
<div align="center">
    <Font color="purple" size="5" face="楷体"><h1>B.T.S</h1></Font>
        <hr>
        <c:if test="${user==null}">
            <a href="${pageContext.request.contextPath}/servlet/RegisterUIServlet" target="_blank">注册</a>

            <a href="${pageContext.request.contextPath}/servlet/LoginUIServlet">登陆</a>
        </c:if>
        <c:if test="${user!=null}" >
            欢迎您：${user.userName}
            <input type="button" value="退出登陆" onclick="doLogout()">
        </c:if>
    <table  cellSpacing="1" cellPadding="1" width="660" align="center" border="0">
    <tr valign="bottom">
        <td><A href="album.jsp">专辑</A></td>
        <td><A href="books.jsp">书籍</A></td>
        <td><A href="bt21.jsp">BT21</A></td>
    </tr>
    </table>
    </hr>
</div>
</body>
</html>
