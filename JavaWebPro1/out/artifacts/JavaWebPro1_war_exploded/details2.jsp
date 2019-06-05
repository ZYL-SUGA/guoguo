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

    <title>My JSP 'details.jsp' starting page</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">

    <style type="text/css">
        body{
            background-image: url("img/bt2112.jpg");
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
    <table width="750" height="60" cellpadding="0" cellspacing="0" border="0">
        <tr>
            <!-- 商品详情  -->
            <%
                item2DAOS itemsDao = new item2DAOS();
                item2 itemB = itemsDao.getItemById(Integer.valueOf(request.getParameter("id")));
                if(itemB!=null){
            %>
            <td width="70%" valign="top">
                <table>
                    <tr>
                        <td rowspan="4"><img src="img/<%=itemB.getPicture() %>" width="230" height="300"/></td>
                    </tr>
                    <tr>
                        <td><B><%=itemB.getName() %></B></td>
                    </tr>
                    <tr>
                        <Font color="black" size="4" face="楷体">
                        <b>『金泰亨』好奇心很强的TATA：来自BT星球，对所有事物都抱有好奇心。</b><br>
                        <b>『金硕珍』善良的羊驼RJ：善良有礼貌，嘟嘟囔囔的时候最可爱。因为怕冷所以穿着风雪大衣。</b><br>
                        <b>『朴智旻』充满热情的小狗狗CHIMMY：与生俱来充满热情，对任何事都竭尽全力尝试。</b><br>
                        <b>『田柾国』粉色系强壮小兔兔COOKY：一只有着变强壮强烈愿望的兔子。</b><br>
                        <b>『田柾国』粉色系强壮小兔兔COOKY：一只有着变强壮强烈愿望的兔子。</b><br>
                        <b>『郑号锡』跳着舞戴着面具的小马驹MANG：跳舞时的MANG最酷，总是戴着面具。</b><br>
                        <b>『金南俊』思考者考拉KOYA：聪明，但是陷入深度思考的时候看上去昏昏欲睡。</b><br>
                        <b>『金南俊』思考者考拉KOYA：聪明，但是陷入深度思考的时候看上去昏昏欲睡。</b><br>
                        <b>宇宙机器人VAN： BT21的守护者。</b><br>
                        </Font>
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
            <td width="30%" bgcolor="#87cefa" align="center">
                <br>
                <b>您浏览过的商品</b><br>
                <!-- 循环开始 -->
                <%
                    ArrayList<item2> itemsList = itemsDao.getViewList(list);
                    if(itemsList!=null&&itemsList.size()>0){
                        for(item2 i: itemsList)
                        {
                %>
                <div>
                    <dl>
                        <dt>
                            <a href="details2.jsp?id="<%=i.getId() %>"><img src="img/<%=i.getPicture() %>" width="100" height="150" border="1"></a>
                        </dt>
                        <dd class="dd_name"><%=i.getName() %></dd>
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