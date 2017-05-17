<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    
    <title>书林|为极简的写作阅读体验</title>
	<jsp:include page="/head"></jsp:include>
    
</head>
<body>
<!--头部-->
<jsp:include page="/top"></jsp:include>
<!--头部结束-->
<!--轮播图-->
<div class="row" style="margin-top: 52px">
<div id="demo01" class="flexslider" style="height: 400px; border-radius: 0 0 10px 10px">
    <ul class="slides">
        <li><div class="img"><img src="images/ad_yuetu.jpg" height="380" width="1000" alt="" /></div></li>
        <li><div class="img"><img src="images/ad_yuetu.jpg" height="380" width="1000" alt="" /></div></li>
        <li><div class="img"><img src="images/ad_nba.jpg" height="380" width="1000" alt="" /></div></li>
        <li><div class="img"><img src="images/ad_stock.jpg" height="380" width="1000" alt="" /></div></li>
        <li><div class="img"><img src="images/ad_auto.jpg" height="380" width="1000" alt="" /></div></li>
    </ul>
</div>
</div>
<!--轮播图结束-->
<!--主体开始-->
<div class="container-fluid">


<div class="row"  style="margin-top:20px; ">
    <!--左侧-->
    <div class="col-sm-6 col-sm-offset-2" >
        <!--板块开始-->
        <div class="row">
            <p class="plate-p">
                <a href="#" class="plate-a">
                    <img src="images/20100120161805563.jpg" height="40px" width="40px" alt="" style="margin-right: 10px">
                    短篇小说</a>
                <a href="#" class="plate-a">
                    <img src="images/20100120161805563.jpg" height="40px" width="40px" alt="" style="margin-right: 10px">
                    短篇小说</a>
                <a href="#" class="plate-a">
                    <img src="images/20100120161805563.jpg" height="40px" width="40px" alt="" style="margin-right: 10px">
                    短篇小说</a>
                <a href="#" class="plate-a">
                    <img src="images/20100120161805563.jpg" height="40px" width="40px" alt="" style="margin-right: 10px">
                    短篇小说</a>


            </p>
            <p>
                <a href="#" class="plate-a">
                    <img src="images/20100120161805563.jpg" height="40px" width="40px" alt="" style="margin-right: 10px">
                    短篇小说</a>
                <a href="#" class="plate-a">
                    <img src="images/20100120161805563.jpg" height="40px" width="40px" alt="" style="margin-right: 10px">
                    短篇小说</a>
                <a href="#" class="more-plate-a">更多板块<i class="fa fa-angle-double-right" style="margin-left: 10px"></i></a>
            </p>

        </div>
        <!--板块结束-->

        <!--文章列表开始-->
        <div class="row">

            <ul class="article-list">
                <li class="" >
                    <div class="content">
                        <div class="single-article-top">
                            <a href="" class="user-img-a">
                                <img src="images/user-05.png" alt="" class="img-circle user-image-size">
                                测试用户
                            </a>
                            <span class="article-time">
                            5.15 12:00
                            </span>
                        </div>
                        <div class="acticle-body">
                            <a href="#" class="artile-title">晚点遇到你，余生都是你</a>
                            <p class="article-p">
                                1. 你累了吧？ 一个人走了那么久，才终于遇见我。那些没有我的日子，一个人撑得并不容易，对吗？
                                有人说，你的生命里会有一个人，他的出现，会让你之前的等待都变得值得，你要相信，...
                            </p>
                            <a class="article-plate-a" href="">
                                短篇小说
                            </a>
                            <a class="article-info-a" href="">
                                <i class="fa fa-eye"></i>
                                2312
                            </a>
                            <a class="article-info-a" href="">
                                <i class="fa fa-comment"></i>
                                2312
                            </a>
                            <a class="article-info-a" href="">
                                <i class="fa fa-heart"></i>
                                2312
                            </a>

                        </div>

                    </div>
                    <a class="img-a" href="">
                        <img class="article-img" src="images/demo-1.jpg" alt="">
                    </a>
                </li>
                <li class="" >
                    <div class="content">
                        <div class="single-article-top">
                            <a href="" class="user-img-a">
                                <img src="images/user-05.png" alt="" class="img-circle user-image-size">
                                测试用户
                            </a>
                            <span class="article-time">
                            5.15 12:00
                            </span>
                        </div>
                        <div class="acticle-body">
                            <a href="#" class="artile-title">晚点遇到你，余生都是你</a>
                            <p class="article-p">
                                1. 你累了吧？ 一个人走了那么久，才终于遇见我。那些没有我的日子，一个人撑得并不容易，对吗？
                                有人说，你的生命里会有一个人，他的出现，会让你之前的等待都变得值得，你要相信，...
                            </p>
                            <a class="article-plate-a" href="">
                                短篇小说
                            </a>
                            <a class="article-info-a" href="">
                                <i class="fa fa-eye"></i>
                                2312
                            </a>
                            <a class="article-info-a" href="">
                                <i class="fa fa-comment"></i>
                                2312
                            </a>
                            <a class="article-info-a" href="">
                                <i class="fa fa-heart"></i>
                                2312
                            </a>

                        </div>

                    </div>
                    <a class="img-a" href="">
                        <img class="article-img" src="images/demo-1.jpg" alt="">
                    </a>
                </li>
                <li class="" >
                    <div class="content">
                        <div class="single-article-top">
                            <a href="" class="user-img-a">
                                <img src="images/user-05.png" alt="" class="img-circle user-image-size">
                                测试用户
                            </a>
                            <span class="article-time">
                            5.15 12:00
                            </span>
                        </div>
                        <div class="acticle-body">
                            <a href="#" class="artile-title">晚点遇到你，余生都是你</a>
                            <p class="article-p">
                                1. 你累了吧？ 一个人走了那么久，才终于遇见我。那些没有我的日子，一个人撑得并不容易，对吗？
                                有人说，你的生命里会有一个人，他的出现，会让你之前的等待都变得值得，你要相信，...
                            </p>
                            <a class="article-plate-a" href="">
                                短篇小说
                            </a>
                            <a class="article-info-a" href="">
                                <i class="fa fa-eye"></i>
                                2312
                            </a>
                            <a class="article-info-a" href="">
                                <i class="fa fa-comment"></i>
                                2312
                            </a>
                            <a class="article-info-a" href="">
                                <i class="fa fa-heart"></i>
                                2312
                            </a>

                        </div>

                    </div>
                    <a class="img-a" href="">
                        <img class="article-img" src="images/demo-1.jpg" alt="">
                    </a>
                </li>
                <li class="" >
                    <div class="content">
                        <div class="single-article-top">
                            <a href="" class="user-img-a">
                                <img src="images/user-05.png" alt="" class="img-circle user-image-size">
                                测试用户
                            </a>
                            <span class="article-time">
                            5.15 12:00
                            </span>
                        </div>
                        <div class="acticle-body">
                            <a href="#" class="artile-title">晚点遇到你，余生都是你</a>
                            <p class="article-p">
                                1. 你累了吧？ 一个人走了那么久，才终于遇见我。那些没有我的日子，一个人撑得并不容易，对吗？
                                有人说，你的生命里会有一个人，他的出现，会让你之前的等待都变得值得，你要相信，...
                            </p>
                            <a class="article-plate-a" href="">
                                短篇小说
                            </a>
                            <a class="article-info-a" href="">
                                <i class="fa fa-eye"></i>
                                2312
                            </a>
                            <a class="article-info-a" href="">
                                <i class="fa fa-comment"></i>
                                2312
                            </a>
                            <a class="article-info-a" href="">
                                <i class="fa fa-heart"></i>
                                2312
                            </a>

                        </div>

                    </div>
                    <a class="img-a" href="">
                        <img class="article-img" src="images/demo-1.jpg" alt="">
                    </a>
                </li>

            </ul>

        </div>

        <!--文章列表结束-->

    </div>
    <!--左侧结束-->
    <!--右侧-->
    <div class="col-sm-3">

    </div>
    <!--右侧结束-->
</div>
</div>
<!--主体结束-->
</body>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-3.1.1.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="plugins/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/slider.js"></script>
<script type="text/javascript">
    $(function(){

        $('#demo01').flexslider({
            animation: "slide",
            direction:"horizontal",
            easing:"swing"
        });

    });
</script>
</html>