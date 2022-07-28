<%@ page import="com.service.Userservice" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: 11476
  Date: 2022/3/25
  Time: 0:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <link rel="stylesheet" type="text/css" href="https://www.layuicdn.com/layui/css/layui.css" />

    <style type="text/css">
        .layui-row li a{
            color: #B5FFF8;
            font-size: medium;
        }
        .layui-row1{
            margin-left: 15%;

        }
        html{
            height: 100%;
        }
        body{
            background-size: cover;
            background-image: url("images/RRR.jpg");
            background-repeat:repeat-y;
            background-position:50% 50%; /*             图片上下左右居中  */
            background-size:100% 100%;       /*           保持图像本身的宽高比例，将图片缩放到宽度或高度正好适应定义背景的区域  */

            padding: 0;
            margin: 0;
        }
    </style>
</head>
<body>

<script src="https://www.layuicdn.com/layui/layui.js"></script>
    <div >
        <ul class="layui-nav" lay-filter="">
            <li class="layui-nav-item"><a href="http://localhost:8080/news_war_exploded/index2.jsp">返回首页</a></li>
        </ul>
    </div>
<div class="layui-row" id="combox">
    <div class="layui-col-md6 layui-col-md-offset3 com" >
        <h2>发表评论</h2>

        <div class="layui-form-item layui-form-text">
            <div class="layui-input-block">
                <textarea name="desc" placeholder="请输入内容" class="layui-textarea" id="content" name="Comment" required lay-verify="required"></textarea>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit lay-filter="formDemo" onclick="filtercomment()">立即提交</button>
            </div>
        </div>
    </div>
</div>

    <div class="layui-row" >
        <div class="layui-col-md6 layui-col-md-offset3 com-box">
            <div class="comment-list-box">
                <div class="layui-row1" >

                <div>
                    <table class="layui-table">
                    <thead>
                    <tr>
                        <th>评论所属</th>
                        <th>评论内容</th>
                        <th>评论日期</th>
                        <th> </th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${list2}" var="a">
                        <tr>
                            <td>我的评论</td>
                            <td>${a.commentContent}</td>
                            <td><fmt:formatDate value='${a.commentDate}' pattern='yyyy-MM-dd hh:mm' /></td>
                            <td><button type="button" class="layui-btn layui-btn-xs">
                                <a onclick="remove(${a.commentID})">删除</a>
                            </button></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                    <tbody>
                    <c:forEach items="${list}" var="a">
                        <tr>
                            <td>账户ID：${a.userID}</td>
                            <td>${a.commentContent}</td>
                            <td><fmt:formatDate value='${a.commentDate}' pattern='yyyy-MM-dd hh:mm' /></td>
                            <td><button type="button" class="layui-btn layui-btn-xs">
                                <a href="ReportComment?CommentID=${a.commentID}">举报</a>
                            </button></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                </div>
                </div>
            </div>
        </div>

    </div>
<%--    <jsp:include page="news.html" flush="true"/>--%>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
    function remove(CommentID) {
        $.ajax({
            url:  'deletecomment',
            type: "post",
            data: {CommentID:CommentID},
            success: function (data) {
                alert(data.msg);
                var b =<%=session.getAttribute("newsid")%>;
                window.location.href = 'http://localhost:8080/news_war_exploded/lookcomment?a='+b;
            },
            error:function (data){
                alert("失败");
                var url=window.location.href;  //获取当前页面的url
                var len=url.length;   //获取url的长度值
                var a=url.indexOf("=");   //获取第一次出现？的位置下标
                var b=url.substr(a+1,len);   //截取问号之后的内容
                window.location.href = 'http://localhost:8080/news_war_exploded/lookcomment?a='+b;
            }
        });
    }
</script>
<script>
    function add() {
        $.ajax({
            url:  'insertcomment',
            type: "post",
            data: {Comment:$("#content").val()},
            success: function (data) {
                alert(data.msg);
                var myName =<%=session.getAttribute("newsid")%>;
                alert(myName+"wwww");
                window.location.href ='http://localhost:8080/news_war_exploded/lookcomment?a='+myName;
            },
            error:function (data){
                alert("失败");
                window.location.href = 'http://localhost:8080/news_war_exploded/lookcomment?a='+myName;
            }
        });
    }
</script>
<script>
    function add1() {
        var content=$("#content").val()
        $.ajax({
            url:  'insertcomment',
            type: 'POST',
            data: {
                "Comment":content
            },
            success: function (result) {
                console.log(result);
                if (result == null) {
                    layer.msg("更新失败！");
                    // console.log("更新失败")
                } else {

                    var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
                    parent.refreshTable();//调用父页面中刷新表格的函数
                    //layer信息提示
                    layer.msg('更新成功');//下面是关键代码
                    setTimeout(function () {
                        parent.layer.close(index)
                    }, 330);//延迟
                }
            }
        });
    }
    window.refreshTable = function(){

        table.reload('list2', {
            url: '${pageContext.request.contextPath}lookcomment'
        });
    }
</script>



<%--以下这个方法为曹富钧前端代码，用于实现评论过滤--%>
<script>

    function filtercomment() {
        $.ajax({
            url:  'filtercomment',
            type: "post",
            async:false,  //使得异步变同步
            data: {Comment:$("#content").val()},
            success: function (data) {
                if (data.msg === "ok") {
                    add1();
                    window.location.reload();
                } else {
                    alert(data.msg);
                }
            }
        });

    }
</script>

</body>
</html>