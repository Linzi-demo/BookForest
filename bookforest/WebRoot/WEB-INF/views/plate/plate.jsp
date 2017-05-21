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
<body style="background-color: #f7f7f7">
<!--头部-->
<jsp:include page="/top"></jsp:include>
<!--头部结束-->

<!--板块图片-->
<div class="row text-center">
    <img src="images/hottitle-green.png" width="1000px" height="100px" style="margin-top:80px" alt="">
</div>
<!--板块图片结束-->

<!--主题开始-->
<div class="row" style="margin-top: 30px">
    <div class="col-sm-8 col-sm-offset-2">
        <!--tab开始-->
        <div class="tab-container" style="float: left;width: 100%;">
			
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
                        <section id="section-linebox-1">
                        	<c:if test="${plates!=null }">
									<div class="row">
										<c:forEach items="${plates }" var="plate">
											<div class="col-md-4">
		                                    <div class="single-member effect-3">
		                                        <div class="member-image">
		                                            <img src="${plate.plateImg }" alt="Member">
		                                        </div>
		                                        <div class="member-info">
		                                            <h3>${plate.plateName }</h3>
		                                            <h5>${plate.articleNum } 篇文章 · ${plate.plateFollow }人关注</h5>
		                                            <p>
		                                                ${plate.plateInfo }
		
		                                            </p>
		                                            <div class="social-touch">
		                                                <a href="#"><i class="fa fa-plus" style="margin-right: 5px"></i>关注</a>
		
		                                            </div>
		                                        </div>
		                                    </div>
		                                </div>
										
										</c:forEach>
		                                
                                </div>
							</c:if>
                            
                            
                            
                            
                           
                        </section>
                        <section id="section-linebox-2">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="single-member effect-3">
                                        <div class="member-image">
                                            <img src="../images/member_270x210.jpg" alt="Member">
                                        </div>
                                        <div class="member-info">
                                            <h3>短篇小说</h3>
                                            <h5>322 篇文章 · 40K人关注</h5>
                                            <p>借一斑略知全豹 ，以一目尽传精神。</p>
                                            <div class="social-touch">
                                                <a class="fb-touch" href="#"></a>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="single-member effect-3">
                                        <div class="member-image">
                                            <img src="../images/member_270x210.jpg" alt="Member">
                                        </div>
                                        <div class="member-info">
                                            <h3>短篇小说</h3>
                                            <h5>322 篇文章 · 40K人关注</h5>
                                            <p>借一斑略知全豹 ，以一目尽传精神。</p>
                                            <div class="social-touch">
                                                <a class="fb-touch" href="#"></a>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="single-member effect-3">
                                        <div class="member-image">
                                            <img src="../images/member_270x210.jpg" alt="Member">
                                        </div>
                                        <div class="member-info">
                                            <h3>短篇小说</h3>
                                            <h5>322 篇文章 · 40K人关注</h5>
                                            <p>借一斑略知全豹 ，以一目尽传精神。</p>
                                            <div class="social-touch">
                                                <a class="fb-touch" href="#"></a>

                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="single-member effect-3">
                                        <div class="member-image">
                                            <img src="../images/member_270x210.jpg" alt="Member">
                                        </div>
                                        <div class="member-info">
                                            <h3>短篇小说</h3>
                                            <h5>322 篇文章 · 40K人关注</h5>
                                            <p>借一斑略知全豹 ，以一目尽传精神。</p>
                                            <div class="social-touch">
                                                <a class="fb-touch" href="#"></a>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="single-member effect-3">
                                        <div class="member-image">
                                            <img src="../images/member_270x210.jpg" alt="Member">
                                        </div>
                                        <div class="member-info">
                                            <h3>短篇小说</h3>
                                            <h5>322 篇文章 · 40K人关注</h5>
                                            <p>借一斑略知全豹 ，以一目尽传精神。</p>
                                            <div class="social-touch">
                                                <a class="fb-touch" href="#"></a>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="single-member effect-3">
                                        <div class="member-image">
                                            <img src="../images/member_270x210.jpg" alt="Member">
                                        </div>
                                        <div class="member-info">
                                            <h3>短篇小说</h3>
                                            <h5>322 篇文章 · 40K人关注</h5>
                                            <p>借一斑略知全豹 ，以一目尽传精神。</p>
                                            <div class="social-touch">
                                                <a class="fb-touch" href="#"></a>

                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </section>
                        <section id="section-linebox-3"></section>

                    </div><!-- /content -->
                </div><!-- /tabs -->
            </section>


        </div><!-- /container -->
        <!--tab结束-->






    </div>
</div>

<!--主体结束-->
</body>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-3.1.1.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="plugins/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/slider.js"></script>
<script src="js/cbpFWTabs.js"></script>

<script>
    (function() {

        [].slice.call( document.querySelectorAll( '.tabs' ) ).forEach( function( el ) {
            new CBPFWTabs( el );
        });

    })();
</script>
</html>