<%--
  Created by IntelliJ IDEA.
  User: li
  Date: 2022/3/28
  Time: 16:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User</title>
    <meta charset="utf-8">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/stack-interface.css" rel="stylesheet" type="text/css" media="all">
    <link href="css/socicon.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/stack-interface.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/theme-serpent.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/custom.css" rel="stylesheet" type="text/css" media="all" />
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,400i,500,700" rel="stylesheet" type="text/css">
    <link href="css/font-roboto.css" rel="stylesheet" type="text/css">
</head>
<body>
<%--<form action=${pageContext.request.contextPath }/register method="post" class="center">
    <span style="font-size: large">欢迎登录此系统</span><br>
    <%
        String errorInfo = (String)request.getAttribute("loginError");         // 获取错误属性
        if(errorInfo != null) {
    %>
    <script type="text/javascript" language="javascript">
        alert("<%=errorInfo%>");                                            // 弹出错误信息
    </script>
    <%
        }
    %>
    请输入你的身份id：<br>
    <input type="text" name="userID" required><br/>
    请输入你的账号：<br>
    <input type="text" name="userAccount" required><br/>
    请输入你的密码：<br>
    <input type="text" name="userPassword" required><br/>
    请输入你的昵称：<br>
    <input type="text" name="userName" required><br/>
    请输入你的性别：<br>
    <input type="text" name="userSex" required><br/>
    请输入你的邮箱：<br>
    <input type="text" name="userEmail" required><br/>
    <input type="submit" value="提交"/>
</form>--%>
<div class="nav-container">
    <div class="via-1651987424524" via="via-1651987424524" vio="登陆">
        <div class="bar bar--sm visible-xs" wfd-invisible="true">
            <div class="container">
                <div class="row">
                    <div class="col-3 col-md-2">
                        <a href="index.html"> <img class="logo logo-dark" alt="logo" src="https://static.lapus.cn/img/logo-dark.png"> <img class="logo logo-light" alt="logo" src="https://static.lapus.cn/img/logo-light.png" wfd-invisible="true"> </a>
                    </div>
                    <div class="col-9 col-md-10 text-right">
                        <a href="#" class="hamburger-toggle" data-toggle-class="#menu2;hidden-xs hidden-sm"> <i class="icon icon--sm stack-interface stack-menu"></i> </a>
                    </div>
                </div>
            </div>
        </div>
        <nav id="menu2" class="bar bar-2 hidden-xs">
            <div class="container">
                <div class="row">
                    <div class="col-lg-2 text-center text-left-sm hidden-xs order-lg-2">
                        <div class="bar__module">

                        </div>
                    </div>
                    <div class="col-lg-5 order-lg-1">
                        <div class="bar__module">
                            <ul class="menu-horizontal text-left">
                                <li> <a href="Tourlogin">
                                    首页
                                </a> </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-5 text-right text-left-xs text-left-sm order-lg-3">
                        <div class="bar__module">
                            <a class="btn btn--sm type--uppercase" href="Userlogin.jsp"> <span class="btn__text">
                                    用户登陆
                                </span> </a>
                            <a class="btn btn--sm type--uppercase" href="Adminlogin.jsp"> <span class="btn__text">
                                    管理员登陆
                                </span> </a>
                            <a class="btn btn--sm type--uppercase btn--primary" href="register.jsp"> <span class="btn__text">
                                    注册
                                </span> </a>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
    </div>
</div>
<div class="main-container">
    <section class="switchable">
        <div class="container">
            <div class="row justify-content-between align-items-center">
                <div class="col-md-6 col-lg-5">
                    <div class="switchable__text">
                        <h2>Create a Lapus account</h2> <span>Already have an account? <a href="Userlogin.jsp">Sign In</a></span>
                        <hr class="short">
                        <form action=${pageContext.request.contextPath }/register>
                            <%
                                String errorInfo = (String)request.getAttribute("loginError");         // 获取错误属性
                                if(errorInfo != null) {
                            %>
                            <script type="text/javascript" language="javascript">
                                alert("<%=errorInfo%>");                                            // 弹出错误信息
                            </script>
                            <%
                                }
                            %>
                            <div class="row">
                                <div class="col-12"> <input type="userID" name="userID" placeholder="ID"> </div>
                                <div class="col-12"> <input type="userAccount" name="userAccount" placeholder="账号"> </div>
                                <div class="col-12"> <input type="userPassword" name="userPassword" placeholder="密码"> </div>
                                <div class="col-12"> <input type="userName" name="userName" placeholder="昵称"> </div>
                                <div class="col-12"> <input type="userSex" name="userSex" placeholder="性别"> </div>
                                <div class="col-12"> <input type="userEmail" name="userEmail" placeholder="邮箱"> </div>
                                <div class="col-12"> <button type="submit" class="btn btn--primary">注册账号</button> </div>
                                <hr>
                                <div class="col-12"> <span class="type--fine-print">马上注册, 并同意网站 <a href="protocol.html">服务条款</a></span> </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-md-6 col-lg-5"> <img alt="Image" class="border--round box-shadow-shallow" src="images/landing-7.jpg"> </div>
            </div>
        </div>
    </section>
    <footer class="footer-7 text-center-xs">
        <div class="container">
            <div class="row">
                <div class="col-sm-6"> <span class="type--fine-print">© <span class="update-year"></span> HTMLPAGE.CN — All Rights Reserved</span>
                </div>
                <div class="col-sm-6 text-right text-center-xs">

                </div>
            </div>
        </div>
    </footer>
</div>
<script src="js/jquery-3.1.1.min.js"></script>
<script src="js/parallax.js"></script>
<script src="js/smooth-scroll.min.js"></script>
<script src="js/scripts.js"></script>

</body>
</html>
