<%--
  Created by IntelliJ IDEA.
  User: li
  Date: 2022/3/28
  Time: 15:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zxx">
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
<div class="nav-container">
    <div class="via-1651987424524" via="via-1651987424524" vio="登陆">
        <div class="bar bar--sm visible-xs" wfd-invisible="true">
            <div class="container">
                <div class="row">
                    <div class="col-3 col-md-2">

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
                    <div class="col-lg-5 text-right text-left-xs text-left-sm order-lg-4">
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
                        <h2>Log In</h2>
                        <p>To Your Account</p>
                        <hr class="short">
                        <font color="red">${requestScope.message }</font><br><br>
                        <form action=${pageContext.request.contextPath }/Userlogin method="post" class="center">
                            <input type="text" name="name" placeholder="User Account" required><br><br>
                            <input type="password" name="password" placeholder="User Password" required><br><br>
                            <button class="btn" type="submit">Log In</button><br><br>
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
