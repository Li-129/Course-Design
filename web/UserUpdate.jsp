<%--
  Created by IntelliJ IDEA.
  User: li
  Date: 2022/5/7
  Time: 22:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.vo.User" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <title>User</title>
    <script src="<%=request.getContextPath()%>/js/jquery-3.2.1.js"></script>
    <script src="<%=request.getContextPath()%>/js/bootstrap-table.js"></script>
    <script src="<%=request.getContextPath()%>/js/bootstrap-table-zh-CN.js"></script>
    <link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet">
    <script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
</head>
<%  User user = (User) request.getSession().getAttribute("uu");
    int ID= (int) request.getSession().getAttribute("ID");
    String PASSWORD =(String) request.getSession().getAttribute("PASSWORD");
    String NAME =(String) request.getSession().getAttribute("NAME");
    String SEX =(String) request.getSession().getAttribute("SEX");
    String EMAIL =(String) request.getSession().getAttribute("EMAIL");

%>
<style>
    .mark1{
        　　display: block;
        　　position: fixed;
        　　top: 0;
        　　left: 0;
        　　width: 100%;
        　　height: 100%;
        　　background: #000;
        　　filter: alpha(opacity=30);
        　　-ms-filter: "alpha(opacity=30)";
        　　opacity: .3;
        　　z-index: 10000;
    }
    .center{
        display: block;
        position: fixed;
        _position: absolute;
        top: 50%;
        left: 50%;
        width: 666px;
        height:400px;
        margin-left: -333px;
        margin-top: -200px;
        z-index: 10001;
        box-shadow: 2px 2px 4px #A0A0A0, -2px -2px 4px #A0A0A0;
        background-color: #fff;
    }
</style>
<body>

<div class="mark1">
    <form  class="center" action=${pageContext.request.contextPath }/Userupdate method="post">
        <div class="row">
            <div class="col-md-12">
                <div class="">
                    ID  <input readonly="readonly" type="text" class="form-control" id="userID" name="userID" value="<%=ID%>">
                </div>
                <div class="">
                    PASSWORD<input type="text" class="form-control" id="userPassword" name="userPassword" value="<%=PASSWORD%>" placeholder="userPassword">
                </div>
                <div class="">
                    NAME<input type="text" class="form-control" id="userName" name="userName" value="<%=NAME%>" placeholder="userName">
                </div>
                <div class="">
                    SEX<input type="text" class="form-control" id="userSex" name="userSex" value="<%=SEX%>" placeholder="userSex">
                </div>
                <div class="">
                    EMAIL<input type="text" class="form-control" id="userEmail" name="userEmail" value="<%=EMAIL%>" placeholder="userEmail">
                </div>
                <div>
                    <button type="submit"  class="btn btn-success" data-toggle="modal" data-target="#myModal0">更新</button>
                    <a href="User.jsp"><button  type="button" class="btn btn-danger" >返回</button></a>
                </div>
            </div>
        </div>
    </form>
</div>
</body>
</html>
