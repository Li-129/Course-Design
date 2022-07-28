<%--
  Created by IntelliJ IDEA.
  User: 27734
  Date: 2022/3/22
  Time: 8:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <style type="text/css">
        body{
            background-size: cover;
            background-image: url("images/hero-1.jpg");
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
<%--<script>--%>
<%--    function insertNews() {--%>
<%--        $.ajax({--%>
<%--            url: 'InsertNews',--%>
<%--            async:false,--%>
<%--            type: "post",--%>
<%--            data: {--%>
<%--                NewsTitle: $("#NewsTitle").val(),--%>
<%--                NewsContent: $("#NewsContent").val(),--%>
<%--                NewsColumn: $("#NewsColumn").val(),--%>
<%--                NewsPic:$("#NewsPic").val()--%>
<%--            },--%>
<%--            success: function (data) {--%>
<%--                alert(data);--%>
<%--                window.location.href = 'http://localhost:8080/news_war_exploded/index2.jsp';--%>
<%--            },--%>
<%--            error:function (data){--%>
<%--                var a = JSON.stringify(data);--%>
<%--                // alert("错误");--%>
<%--                 alert("提交成功");--%>
<%--                window.location.href = 'http://localhost:8080/news_war_exploded/index2.jsp';--%>
<%--            }--%>

<%--        });--%>
<%--    }--%>
<%--</script>--%>

<ul class="layui-nav" lay-filter="">
    <li class="layui-nav-item"><a href="User.jsp">稿件提交~~~点击返回用户主页</a></li>
</ul>

<div class="layui-container">
    <div class="layui-row">
        <div class="layui-col-md6 layui-col-md-offset3" >
            <br/>
            <span style="color:orange"><h1>提交稿件</h1></span><br/>
       <form class="layui-form" action="InsertNews" enctype="multipart/form-data" method="post">
                <br/>
                <div class="layui-form-item">
                    <label class="layui-form-label"><span style="color:orange">新闻标题 :</span> </label>
                    <div class="layui-input-block">
                        <input class="layui-input" placeholder="请输入新闻标题" type="text" id="NewsTitle" name="NewsTitle"><br/>
                    </div>
                </div>
                <div class="layui-form-item layui-form-text">
                    <label class="layui-form-label"><span style="color:orange">新闻内容 :</span> </label>
                    <div class="layui-input-block">
                        <textarea class="layui-textarea" placeholder="请输入新闻内容" id="NewsContent"  name="NewsContent" rows="20" cols="80"></textarea><br/>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label"><span style="color:orange">新闻分类 ：</span></label>
                    <div class="layui-input-block">
                        <select lay-verify="required" id="NewsColumn" name="NewsColumn" >
                            <option value=1 selected="selected" >时政</option>
                            <option value=2 >实事</option>
                            <option value=3 >经济</option>
                            <option value=4 >体育</option>
                            <option value=5 >文化</option>
                        </select>
                    </div>
                </div>
                <br/>
                <div class="layui-form-item">
                    <label class="layui-form-label"><span style="color:orange">新闻图片:</span> </label>
                    <div class="layui-input-block">
                        <input class="layui-input" type="file" id="NewsPic" name="NewsPic"/><br/>
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button class="layui-btn" lay-submit lay-filter="formDemo"><input type="submit" value="提交稿件"/></button><br/>
                    </div>

                </div>
           </form>
        </div>
    </div>
</div>

<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</body>
</html>
