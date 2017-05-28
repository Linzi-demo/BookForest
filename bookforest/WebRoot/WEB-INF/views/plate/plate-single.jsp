<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>书林|为极简的写作阅读体验</title>

    <link href="plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link rel="stylesheet" href="plugins/fontawesome/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/style-lunbo.css" />


    <!--<link rel="stylesheet" type="text/css" href="../css/reset-min.css">
    <link href='../css/progression.css' rel='stylesheet' type='text/css'>-->
    <!--tab样式-->
    <!--<link rel="shortcut icon" href="../favicon.ico">-->
    <!--<link rel="stylesheet" type="text/css" href="css/normalize.css" />-->
    <link rel="stylesheet" type="text/css" href="css/demo.css" />
    <link rel="stylesheet" type="text/css" href="css/tabs.css" />
    <link rel="stylesheet" type="text/css" href="css/tabstyles.css" />
    <script src="js/modernizr.custom.js"></script>
    <!--卡片展示样式-->
    <link rel="stylesheet" type="text/css" href="css/style-card.css">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<!--头部-->
<jsp:include page="/top"></jsp:include>
<!--头部结束-->



<!--主题开始-->
<div class="container-fluid">
    <div class="row" style="margin-top: 90px; padding: 0px;">
        <div class="col-sm-6 col-sm-offset-2" >
            <div class="row" style=" margin-bottom: 30px">
                <div class="col-sm-8">
                    <a href="plateIndex?plateId=${plate.plateId}" class="plate-img-a">
                        <img src="${plate.plateImg }" alt="">
                    </a>
                    <div style="margin-top: 10px;margin-left: 100px">
                    	<input type="hidden" id="plateId" value="${plate.plateId }"> 
                        <a class="plate-title">${plate.plateName }</a>
                        <p class="plate-info">收录了38181篇文章 · 900747人关注</p>
                    </div>
                </div>

                <div class="col-sm-2" style="padding-top: 15px">
                    <button onclick="tougao()" class="btn btn-success btn-lg" style="background-color: white; color: #49be64">
                        <i class="fa fa-paper-plane-o" style="margin-right: 5px"> </i>投稿</button>

                </div>

                <div class="col-sm-2" style="padding-top: 15px" >
					<c:if test="${isAttention!=null && isAttention=='true' }">
						<button id="att-btn" onclick="delattention()" class="btn btn-success btn-lg" style="outline:none;background-color: white;color: #2DA76E">
                        	<i class="fa fa-check" style="margin-right: 5px"></i><span>已关注</span> 
                    	</button>
					</c:if>
					<c:if test="${isAttention==null }">
						<button id="att-btn" onclick="attention()" class="btn btn-success btn-lg" style="outline:none">
	                        <i class="fa fa-plus" style="margin-right: 5px"></i><span>关注</span> 
	                    </button>
					</c:if>
                    
                </div>
            </div>
            <div class="row">
                <!--板块文章-->
                <section>
                    <div class="tabs tabs-style-linebox">
                        <nav style="float: left;">
                            <ul>
                                <li><a class="tab-a" href="#section-linebox-5"> <span><i class="fa fa-trophy"></i>&nbsp;&nbsp;推荐</span></a></li>
                                <li><a class="tab-a" href="#section-linebox-4"><span><i class="fa fa-fire"> </i>&nbsp;&nbsp;热门</span></a></li>
                                <li><a class="tab-a" href="#section-linebox-2"><span><i class="fa fa-clock-o"> </i>&nbsp;&nbsp;近期更新</span></a></li>

                            </ul>
                        </nav>
                        <div class="content-wrap" style="clear: left">
                            <section id="section-linebox-1" style="text-align: left">
								<c:if test="${articlesRec!=null }">
									<ul class="article-list">
											<c:forEach var="articleRec" items="${articlesRec}">
													<li class="" >
                                        					<div class="content">
                                            						<div class="single-article-top">
                                                						<a href="showArticle?articleId=${articleRec.articleId }" class="user-img-a">
                                                    						<img src="${articleRec.authorUser.imgUrl }" alt="" class="img-circle user-image-size">
                                                   								${articleRec.authorUser.userName }
                                                						</a>
                                                						<span class="article-time">
                            													${articleRec.date }
                            											</span>
                                            				</div>
                                            				<div class="acticle-body">
                                                						<a href="#" class="artile-title">${articleRec.articleTitle }</a>
                                                <p class="article-p">
                                                    ${articleRec.articleInfo }
                                                </p>
                                                <a class="article-plate-a" href="">
                                                    ${plate.plateName }
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
                                            <img class="article-img" src="${articleRec.articleImg }" alt="">
                                        </a>
                                    </li>
											</c:forEach>
									</ul>
								</c:if>
                                

                            </section>
                            <section id="section-linebox-2" style="text-align: left">
                                <!--文章列表-->
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


                            </section>
                            <section id="section-linebox-3" style="text-align: left"></section>

                        </div><!-- /content -->
                    </div><!-- /tabs -->
                </section>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="row" style="padding-left: 40px; padding-right: 60px">
                <p class="plate-post">板块公告</p>
                <p>借一斑略知全豹 ，以一目尽传精神。<br>
                    投稿须知：<br>
                    1.本专题收录各种类型短篇小说，内容须言之有物，无病呻吟者远离。<br>
                    2.内容须为原创，结构完整（未完待续及连载小说请勿投）。<br>
                    3.字数要求：两千字以上，两万字以下。<br>
                    4.文章排版整洁，段落分明，无明显错别字。<br>
                    5.文章中（包括开头，结尾处）不得出现个人推广性质的额外链接，例如微信号，微博之类。另外，插入图片须谨慎，与内容无关的图片请勿添加。
                    <br> 6.优秀短篇，主编将会手动将其推荐至首页，更有机会成为简书签约作者。<br>

                    专题主编：梅珈瑞 http://www.jianshu.com/users/7ad490252f5a <br>

                    欢迎关注简书短篇小说专题官方公众号：茶点故事（id:jianshu_teahouse） <br>

                    微信添加简书大妈（jianshu_dama），进入简书丰富多彩的专题社群！</p>
            </div>
        </div>
    </div>

</div>

<!--主体结束-->
<!-- 弹出层 -->
<div class="modal fade"  id="addModal" tabindex="-1" role="dialog" aria-labelledby="editModalLabel" data-backdrop="static">
		<div class="modal-dialog sm-lg" role="document">
				<div class="modal-content">
						<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								<h4 class="modal-title" id="editModalLabel">向该板块投稿</h4>
						</div>
						<div class="modal-body">
								<div class="row">
								<%-- <c:if test="${userArticles!=null }"> --%>
									<ul class="article-modal-list">
										<%-- <c:forEach var="userArticle" items="${userArticles }">
											<li>
												<span class="article-title">${userArticle.articleName }</span>
												<button class="btn btn-success" value="${userArticle.articleId }">投稿</button>
											</li>
										</c:forEach> --%>
									</ul>
								<%-- </c:if> --%>
									
								</div>
						</div>
						
				</div>
		</div>
</div>
</body>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-3.1.1.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="plugins/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/slider.js"></script>
<script src="js/cbpFWTabs.js"></script>
<script type="text/javascript" src="js/platesingle.js"></script>
<script>
$(function () { $("[data-toggle='tooltip']").tooltip(); });
    (function() {

        [].slice.call( document.querySelectorAll( '.tabs' ) ).forEach( function( el ) {
            new CBPFWTabs( el );
        });

    })();
    
   
</script>
</html>