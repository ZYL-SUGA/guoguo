<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ page import="me.gacl.db.item2DAOS" %>
<%@ page import="me.gacl.db.item2"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>BUY</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
    <style type="text/css">
        body{
            background-image: url("img/bt21seven.jpg");
            background-repeat: no-repeat;
            background-size: cover;
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
            color: black;
        }
    </style>
</head>

<body>
<Font color="black" size="5" face="楷体"><h1>B.T.2.1</h1></Font>
<hr>

<center>
    <table width="1100" height="0" cellpadding="0" cellspacing="0" border="0"align="center">
        <tr>
            <td>

                <!-- 商品循环开始  -->
                <%
                    item2DAOS itemsDao = new item2DAOS();
                    ArrayList<item2> list = itemsDao.getAllItems();
                    if(list!=null&&list.size()>0){
                        for(int i=0;i<list.size();i++){
                            item2 itemB = list.get(i);
                %>
                <div>
                    <dl>
                        <dt>
                            <a href="details2.jsp?id=<%=itemB.getId() %>"><img src="img/<%=itemB.getPicture() %>" width="200" height="300"></a>
                        </dt>
                        <dd class="dd_name"><%=itemB.getName() %></dd>
                    </dl>
                </div>
                <!-- 商品循环结束  -->
                <%
                        }
                    }
                %>

            </td>
        </tr>
    </table>
</center>
</body>
</html>