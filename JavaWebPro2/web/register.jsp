<%--
  Created by IntelliJ IDEA.
  User: 9999
  Date: 2019/5/11
  Time: 10:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>用户注册</title>
</head>
<style>
    body{
        background-image: url("img/two.jpg");
        background-repeat: no-repeat;
        background-size: cover;
    }
</style>
<body background="img/two.jpg">
<form action="${pageContext.request.contextPath}/servlet/RegisterServlet" method="post">
    <table border="1px"cellpadding="10px"cellspacing="1px"style="width: 30%;margin: auto;background: mediumpurple" bordercolor="black">
        <tr>
            <td>用户名</td>
            <td>
                <%--使用EL表达式${}提取存储在request对象中的formbean对象中封装的表单数据(formbean.userName)以及错误提示消息(formbean.errors.userName)--%>
                <input type="text" name="userName" value="${formbean.userName}">${formbean.errors.userName}
            </td>
        </tr>
        <tr>
            <td>密码</td>
            <td>
                <input type="password" name="userPwd" value="${formbean.userPwd}">${formbean.errors.userPwd}
            </td>
        </tr>
        <tr>
            <td>确认密码</td>
            <td>
                <input type="password" name="confirmPwd" value="${formbean.confirmPwd}">${formbean.errors.confirmPwd}
            </td>
        </tr>
        <tr>
            <td>邮箱</td>
            <td>
                <input type="text" name="email" value="${formbean.email}">${formbean.errors.email}
            </td>
        </tr>
        <tr>
            <td>生日</td>
            <td>
                <input type="text" name="birthday" value="${formbean.birthday}">${formbean.errors.birthday}
            </td>
        </tr>
        <tr>
            <td>
                <input type="reset" value="清空">
            </td>
            <td>
                <input type="submit" value="注册">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
