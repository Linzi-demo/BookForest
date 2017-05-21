<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>书林|极简的写作阅读体验</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Free HTML5 Template by FreeHTML5.co" />
    <meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />


    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    <link rel="shortcut icon" href="favicon.ico">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>

    <link rel="stylesheet" href="login-static/css/bootstrap.min.css">
    <link rel="stylesheet" href="login-static/css/animate.css">
    <link rel="stylesheet" href="login-static/css/style.css">


    <!-- Modernizr JS -->
    <script src="login-static/js/modernizr-2.6.2.min.js"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
    <script src="../login/js/respond.min.js"></script>
    <![endif]-->

</head>
<body>

<div class="container">

    <div class="row">
        <div class="col-md-4 col-md-offset-4">


            <!-- Start Sign In Form -->
            <form action="doLogin" method="post" class="fh5co-form animate-box" data-animate-effect="fadeIn">
                <h2>登  录</h2>
                <div class="form-group">
                    <label for="username" class="sr-only">用户名</label>
                    <input type="text" class="form-control" name="username" id="username" placeholder="Username" autocomplete="off">
                </div>
                <div class="form-group">
                    <label for="password" class="sr-only">密码</label>
                    <input type="password" class="form-control" name="password" id="password" placeholder="Password" autocomplete="off">
                </div>
                <div class="form-group">
                    <label for="remember"><input type="checkbox" id="remember" name="remember"> 记住我</label>
                </div>
                <div class="form-group">
                    <p>没有账号? <a href="register">注册</a> | <a href="forgot.html">忘记密码?</a></p>
                </div>
                <div class="form-group">
                    <input type="submit" value="登  录" class="btn btn-primary">
                </div>
            </form>
            <!-- END Sign In Form -->

        </div>
    </div>

</div>

<!-- jQuery -->
<script src="login-static/js/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="login-static/js/bootstrap.min.js"></script>
<!-- Placeholder -->
<script src="login-static/js/jquery.placeholder.min.js"></script>
<!-- Waypoints -->
<script src="login-static/js/jquery.waypoints.min.js"></script>
<!-- Main JS -->
<script src="login-static/js/main.js"></script>


</body>
</html>
