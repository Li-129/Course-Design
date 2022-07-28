<%@ page import="com.service.CommentService" %>
<%@ page import="com.vo.Comment" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 27734
  Date: 2022/3/28
  Time: 14:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="layui/css/layui.css" />
    <script  src="layui/layui.js">
    </script>
    <script  src="js/jquery-3.6.0.min.js"> </script>
</head>
<body bgcolor="#f0e68c">

<ul class="layui-nav" lay-filter="">
    <li class="layui-nav-item">全部被举报评论如下：</li>
</ul>

<table class="layui-table" border="1">
    <thead>
    <tr>
        <th lay-data="{field:'ID',width:100}">评论编号</th>
        <th lay-data="{field:'Content',width:100}">评论内容</th>
        <th lay-data="{field:'Date',width:100}">评论日期</th>
        <th lay-data="{field:'btn',width:100}">处理</th>
    </tr>
    </thead>
    <tbody>
    <%
        CommentService service=new CommentService();
        List<Comment> list =service.selectAllUncheckComment();
        for(Comment c:list)
        {%>
    <tr>
        <td><%=c.getCommentID() %></td>
        <td><%=c.getCommentContent() %></td>
        <td><%=c.getCommentDate() %></td>
        <td>
            <a href="<%=request.getContextPath()%>/uncheckComment?id=<%=c.getCommentID()%>" >删除</a>
            <a href="<%=request.getContextPath()%>/passComment?id=<%=c.getCommentID()%>">通过</a>
        </td>
    </tr>
    <%;}
    %>
    </tbody></table><br/>
<a href="Admin.jsp"><button  type="button" class="btn btn-danger" >返回</button></a>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</body>
</html>
