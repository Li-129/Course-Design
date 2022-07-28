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
    <style>
        video{
            z-index:-100;
            width: 100%;
            height:100%;
        }
    </style>
</head>
<body>

<%--    <script>--%>
<%--        function lookcomment() {--%>
<%--            $.ajax({--%>
<%--                url:  'insertcomment',--%>
<%--                type: "post",--%>
<%--                data: {},--%>
<%--                success: function (data) {--%>
<%--                    alert("添加成功");--%>
<%--                }--%>
<%--            });--%>
<%--        }--%>
<%--    </script>--%>
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
                    window.location.href = 'http://localhost:8080/news_war_exploded/lookcomment?a='+myName;
                },
                error:function (data){

                    alert("失败");
                    window.location.href = 'http://localhost:8080/news_war_exploded/lookcomment?a='+myName;
                }
            });
        }
    </script>

<%--曹富钧添加--%>
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
                        add();
                        window.location.reload();
                    } else {
                        alert(data.msg);
                    }
                }
            });

        }


    </script>

<%--<form>
    <table bgcolor="#f5deb3" border="1">
        <tr>
        CommentID:$("#commentID").text()
            <td>id</td>
            <td>评论内容</td>
            <td>评价时间</td>
            <td>身份</td>
        </tr>
        <c:forEach items="${list}" var="a">
        <tr>
            <td>${a.commentID}</td>
            <td>${a.commentContent}</td>
            <td>${a.commentDate}</td>
            <td>${a.commentisCheck}</td>
        </tr>
        </c:forEach>
    </table>
</form>--%>
<script src="https://www.layuicdn.com/layui/layui.js"></script>
<div class="layui-row" id="combox">
    <div class="layui-col-md6 layui-col-md-offset3 com" >
        <h2>发表评论</h2>

        <form class="layui-form layui-form-pane">
            <div class="layui-form-item">
                <div class="layui-form-item">
                    <div class="layui-input-inline">
<textarea id="content" name="Comment" placeholder="最多100字" class="layui-textarea" required
          lay-verify="required" maxlength="100" style="resize:none;" cols="30"
          rows="10"></textarea>
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
<%--                <button class="layui-btn" lay-submit lay-filter="comform" onclick="filtercomment()">提交</button>--%>
                <a onclick="add()">wwww</a>
            </div>

        </form>
    </div>
</div>

<div class="layui-row">
    <div class="layui-col-md6 layui-col-md-offset3 com-box">
        <div class="comment-list-box">

            <%--              <tr>
                              <td>${a.commentID}</td>
                              <td>${a.commentContent}</td>
                              <td>${a.commentDate}</td>
                              <td>${a.commentisCheck}</td>
                          </tr>--%>
            <form>
                <ul class="comment-list">
                    <c:forEach items="${list2}" var="a">
                        <li class="comment-line-box d-flex">
                            <a href="#">
                                <span>我的评论</span>
                            </a>
                            <span class="colon">:</span>
                            <a>
                                <span>${a.commentContent}</span>
                            </a>
                            <a>
                                <span>${a.commentDate}</span>
                            </a>
                            <span class="opt">

                    <%-- <a th:attr="οnclick=|reply(${comment.id},'${comment.username}')|">回复</a>--%>
                        <a onclick="remove(${a.commentID})">删除</a>
                    </span>
                            <a href="ReportComment?CommentID=${a.commentID}">举报</a>

                        </li>
                    </c:forEach>

                    <c:forEach items="${list}" var="a">
                        <li class="comment-line-box d-flex">
                            <a href="#">
                                <span class="nickname" ID="commentID">${a.commentID}</span>
                            </a>
                            <span class="colon">:</span>
                            <a>
                                <span>${a.commentContent}</span>
                            </a>
                            <a>
                                <span>${a.commentDate}</span>
                            </a>
                            <a href="ReportComment?CommentID=${a.commentID}">举报</a>
                        </li>
                    </c:forEach>
                </ul>
            </form>
        </div>
    </div>

</div>
<jsp:include page="news.html" flush="true"/>
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</body>
</html>