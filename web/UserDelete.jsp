<%--
  Created by IntelliJ IDEA.
  User: li
  Date: 2022/5/9
  Time: 8:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.vo.User" %>
<%@ page import="com.vo.Admin" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>User</title>
    <script src="<%=request.getContextPath()%>/js/jquery-3.2.1.js"></script>
    <script src="<%=request.getContextPath()%>/js/bootstrap-table.js"></script>
    <script src="<%=request.getContextPath()%>/js/bootstrap-table-zh-CN.js"></script>
    <link href="<%=request.getContextPath()%>/css/bootstrap.min.css"  rel="stylesheet">
    <link href="<%=request.getContextPath()%>/css/bootstrap-table.min.css"  rel="stylesheet">
    <script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath()%>/js/jquery.tablesort.min.js"></script>
</head>
<body>
<div class="row" style="margin-top: 15px">
    <div class="col-md-12">
        <table id="mytable" class="table table-striped">
            <thead>
            <th>学生ID</th>
            <th>年级ID</th>
            <th>Name</th>
            <th>Sex</th>
            <%--<th>照片</th>--%>
            <th>删除</th>
            </thead>
            <tbody>
            <%
                int j=(int)request.getAttribute("num");
                for(int i=0;i<j;i++){
            %>
            <tr>
                <td><%=request.getAttribute("UserID"+i) %></td>
                <td><%=request.getAttribute("UserAccount"+i) %></td>

                <td><%=request.getAttribute("UserName"+i) %></td>
                <td><%=request.getAttribute("UserSex"+i) %></td>


                <td><a href="Userdelete?id=<%=request.getAttribute("UserID"+i) %>"> <button type="button" class="btn btn-danger">删除</button></a></td>
            </tr>
            <%}%>
            </tbody>
        </table>
    </div>
</div>
<div>
      <a href="Admin.jsp"><button type="button" class="btn btn-danger">返回</button></a>
</div>

</body>
</html>
