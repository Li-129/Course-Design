<%@ page import="com.service.NewsService" %>
<%@ page import="com.vo.News" %>
<%@ page import="java.util.List" %>
<%@ page import="com.mapper.Newsmapper" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2022/4/1
  Time: 15:29
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
<body>
<div align="center">
    <div  class="layui-form" style=" border: 1px solid #000000;width: 800px;length:auto ;font-size:17px" >
        <div class="layui-form-item" >
            <form action="changeCheck">
               新闻编号： <input type="text" name="id" value="${requestScope.id}" readonly=true" style="border: 0px"><br>
               新闻标题： <input type="text" name="title" value="${requestScope.title}" readonly="true"style="border: 0px">
                <div class="layui-form-item layui-form-text">
                    <div class="layui-input-block">
                        ${requestScope.NewsContent}
                    </div>
                </div>
                <button class="layui-btn" lay-submit lay-filter="formDemo">审核通过</button>
            </form>
        </div>
    </div>
</div>
<a href="check.jsp"><button  type="button" class="layui-btn" lay-submit lay-filter="formDemo" >返回</button></a>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</body>
</html>
