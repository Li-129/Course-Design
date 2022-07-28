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
    <title> Admin </title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <meta name="keywords"
          content="Hotair Login Form Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <!-- //Meta tag Keywords -->
    <link href="//fonts.googleapis.com/css2?family=Noto+Serif+JP:wght@400;600;700;900&display=swap" rel="stylesheet">
    <!--/Style-CSS -->
    <link rel="stylesheet" href="/news_war_exploded/css/style.css" type="text/css" media="all" />
    <!--//Style-CSS -->

    <link rel="stylesheet" href="/news_war_exploded/css/font-awesome.min.css" type="text/css" media="all">

</head>
<body>

<section class="w3l-hotair-form">
    <h1>Admin Log In</h1>
    <div class="container">
        <!-- /form -->
        <div class="workinghny-form-grid">
            <div class="main-hotair">


                <div class="content-wthree">
                    <h2>Log In</h2>
                    <p>To Your Account</p>
                    <font color="red">${requestScope.message }</font><br><br>
                    <form action=${pageContext.request.contextPath }/Adminlogin method="post" class="center">
                        <input type="text" name="name" placeholder="User Name" required><br><br>
                        <input type="password" name="password" placeholder="User Password" required><br><br>
                        <button class="btn" type="submit">Log In</button><br><br>
                    </form>
                    <div>
                        <p class="account">Don't have an account? <a href="Userlogin.jsp"><br>
                            Return to main page</a></p>
                    </div>
                </div>
                <div class="w3l_form align-self">
                    <div class="left_grid_info">

                    </div>
                </div>
            </div>
        </div>
        <!-- //form -->
        <!-- copyright-->
        <div class="copyright text-center">
            <p class="copy-footer-29"></p>
        </div>
        <!-- //copyright-->
    </div>
</section>
<!-- //form section start -->

<%--<script src="D:\Project\news_1\web\WEB-INF\js\jquery.min.js"></script>
<script>
    $(document).ready(function (c) {
        $('.alert-close').on('click', function (c) {
            $('.main-hotair').fadeOut('slow', function (c) {
                $('.main-hotair').remove();
            });
        });
    });
</script>--%>
</body>
</html>
