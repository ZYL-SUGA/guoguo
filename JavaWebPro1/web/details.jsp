<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ page import="me.gacl.db.ItemsDAOS" %>
<%@ page import="me.gacl.db.items"  %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'details.jsp' starting page</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">

    <style type="text/css">
        body{
            background-image: url("img/bt21bk2.jpg");
        }
        div{
            float: left;
            margin: 10px;
        }
        div dd{
            margin: 0px;
            font-size: 10px;
        }
        div dd.dd_name{
            color: blue;
        }
    </style>
</head>

<body>
<Font color="purple" size="5" face="楷体"><h1>A.L.B.U.M</h1></Font>
<hr>
<center>
    <table width="750" height="60" cellpadding="0" cellspacing="0" border="0">
        <tr>
            <!-- 商品详情  -->
            <%
                ItemsDAOS itemsDao = new ItemsDAOS();
                items item = itemsDao.getItemById(Integer.valueOf(request.getParameter("id")));
                if(item!=null){
            %>
            <td width="70%" valign="top">
                <table>
                    <tr>
                        <td rowspan="4"><img src="img/<%=item.getPicture() %>" width="200" height="200"/></td>
                    </tr>
                    <tr>
                        <td><B><%=item.getName() %></B></td>
                    </tr>
                    <tr>
                        <td>价格：<%=item.getValue() %></td>
                    </tr>
                    <tr>

                    </tr>
                </table>
            </td>
            <%
                }
            %>
            <%
                String list = "";
                Cookie[] cookies = request.getCookies();
                if(cookies!=null&&cookies.length>0){
                    for(Cookie c: cookies){
                        if(c.getName().equals("listViewCookie")){
                            list = c.getValue();
                        }
                    }
                }
                list+=request.getParameter("id")+"#";
                //如果浏览记录超过1000条，清零
                String[] arr = list.split("#");
                if(arr!=null&&arr.length>0){
                    if(arr.length>=1000)
                        list = "";
                }

                Cookie cookie = new Cookie("listViewCookie",list);
                response.addCookie(cookie);
            %>
            <!-- 浏览过的商品  -->
            <td width="30%" bgcolor="purple" align="center">
                <br>
                <b>您浏览过的商品</b><br>
                <!-- 循环开始 -->
                <%
                    ArrayList<items> itemsList = itemsDao.getViewList(list);
                    if(itemsList!=null&&itemsList.size()>0){
                        for(items i: itemsList)
                        {
                %>
                <div>
                    <dl>
                        <dt>
                            <a href="details.jsp?id="<%=i.getId() %>"><img src="img/<%=i.getPicture() %>" width="120" height="90" border="1"></a>
                        </dt>
                        <dd class="dd_name"><%=i.getName() %></dd>
                        <dd>价格：<%=i.getValue() %></dd>
                    </dl>
                </div>
                <%
                        }
                    }
                %>
                <!-- 循环结束 -->
            </td>
        </tr>
    </table>
</center>
</body>
</html>