
<%@ page import="com.vo.News" %>
<%@ page import="java.util.List" %>
<%@ page import="com.service.NewsService" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2022/3/29
  Time: 9:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>

    <style type="text/css">
      body{
        background-size: cover;
        background-image: url("images/wallhaven-e7ljzo.jpg");
        background-repeat:repeat-y;
        background-position:50% 50%; /*             图片上下左右居中  */
        background-size:100% 100%;       /*           保持图像本身的宽高比例，将图片缩放到宽度或高度正好适应定义背景的区域  */

        padding: 0;
        margin: 0;
      }
    </style>




    <link rel="stylesheet" href="layui/css/layui.css" />
    <script  src="layui/layui.js">
    </script>
    <script  src="js/jquery-3.6.0.min.js"> </script>
  </head>
  <body>

  <div align="center">
    <table class="layui-table" lay-data="{width:852, height:600,  page:true, id:'test',}" lay-filter="test">
      <colgroup>
        <col width="150">
        <col width="200">
        <col>
      </colgroup>
      <thead>
        <tr>
          <th lay-data="{field:'id', width:234, sort: true}" >新闻编号</th>
          <th lay-data="{field:'title', width:234}" >新闻标题</th>
          <th lay-data="{field:'button', width:234}"></th>
            <th lay-data="{field:'delete', width:150}"></th>
        </tr>
      </thead>
      <tbody>
      <%
        NewsService service =new NewsService();
        List<News> list = service.selectAllNews();
        int i= 0;
        for (News n:list
        ) {
      %>

      <tr align="center">
        <td><%=n.getNewsID()%></td>
        <td><%=n.getNewsTitle()%></td>
        <td><a href="<%=request.getContextPath()%>/examine?id=<%=n.getNewsID()%>" >详情</a></td>
          <td><a href="<%=request.getContextPath()%>/deleteNews?id=<%=n.getNewsID()%>">删除</a></td>
      </tr>
      </form>
      <%
        }
      %>
      </tbody>
    </table>
  </div>
  <a href="Admin.jsp"><button  type="button" class="btn btn-danger" >返回</button></a>
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  </body>

</html>
