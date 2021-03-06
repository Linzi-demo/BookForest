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

<c:if test="${rotations!=null}">
<div class="row" style="margin-top: 52px">
<div id="demo01" class="flexslider" style="height: 400px; border-radius: 0 0 10px 10px">
    <ul class="slides">
    	<c:forEach var="rotation" items="${rotations }"> 
    		<li><div class="img"><img src="${rotation.imgUrl }" height="380" width="1000" alt="" /></div></li>
    	</c:forEach>
        
    </ul>
</div>
</div>
</c:if>

<!--轮播图结束-->
<!--主体开始-->
<div class="container-fluid">


<div class="row"  style="margin-top:20px; ">
    <!--左侧-->
    <div class="col-sm-6 col-sm-offset-2" >
        <!--板块开始-->
        <c:if test="${plates!=null }">
        		<div class="row plate-row" style=" margin-left:-10px;padding:0">
        			 <c:forEach var="plate" items="${plates }">
        			 		<div class="col-sm-3" style="padding-left:0px; padding-bottom:15px;">
        			 			<a href="plateIndex?plateId=${plate.plateId }" class="plate-a">
				                    <img src="${plate.plateImg }" height="40px" width="40px" alt="" style="margin-right: 10px">
				                    ${plate.plateName }</a>
        			 		</div>
        			 </c:forEach>
        			 <div class="col-sm-3">
        			 	<a href="plateAll" class="more-plate-a">更多板块<i class="fa fa-angle-double-right" style="margin-left: 10px"></i></a>
        			 </div>
        		</div>
        </c:if>
        
        <!--板块结束-->
        <!--文章列表开始-->
        <div class="row">
			<c:if test="${articles!=null }">
				 <ul class="article-list">
				 <c:forEach var="article" items="${articles }">
				 	 <li>
                    <div class="content">
                        <div class="single-article-top">
                            <a href="userpage?uid=${article.authorUser.userId }" class="user-img-a">
                                <img src="${article.authorUser.imgUrl }" alt="" class="img-circle user-image-size">
                                ${article.authorUser.userName }
                            </a>
                            <span class="article-time">
                            	${article.date }
                            </span>
                        </div>
                        <div class="acticle-body">
                            <a href="showArticle?articleId=${article.articleId }" class="artile-title">${article.articleTitle }</a>
                            <p class="article-p">
                                ${article.articleInfo }
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
                        <img class="article-img" src="${article.articleImg }" alt="">
                    </a>
                </li>
				 </c:forEach>
               
               
            </ul>
			</c:if>
           

        </div>

        <!--文章列表结束-->

    </div>
    <!--左侧结束-->
    <!--右侧-->
    <div class="col-sm-3 " >

        <div class="right-list-a" style="margin-left: 20px">
            <a class="right-a" href="">
                <img src="images/right-1.png" alt="">
            </a>
            <a class="right-a" href="">
                <img src="images/right-02.png" alt="">
            </a>
            <a class="right-a" href="">
                <img src="images/right-03.png" alt="">
            </a>
            <a class="right-a" href="">
                <img src="images/right-04.png" alt="">
            </a>
        </div>

            <div style="margin-left: 20px;margin-top: 50px">
                <p style="border-left:2px solid #2BAF77 ;color: #a4a4a4;padding-left: 10px">推荐作者</p>

                <ul class="recommend-list" style="margin-top: 20px">
                    <li>
                        <div class="author">
                            <a class="user-img-a" href="">
                                <img src="images/user-05.png" alt="">
                            </a>
                            <div class="info">
                                <span class="tag">作者</span>
                                <span class="name"> <a href=""> 测试用户 </a></span>
                                <div class="meta">
                                    <span class="publish-time">写了319.7K字 · 17.2K喜欢</span>

                                </div>
                            </div>
                            <a href="" class="follow-a"> <i class="fa fa-plus" style="margin-right: 2px"> </i> 关注</a>
                        </div>

                    </li><li>
                        <div class="author">
                            <a class="user-img-a" href="">
                                <img src="images/user-05.png" alt="">
                            </a>
                            <div class="info">
                                <span class="tag">作者</span>
                                <span class="name"> <a href=""> 测试用户 </a></span>
                                <div class="meta">
                                    <span class="publish-time">写了319.7K字 · 17.2K喜欢</span>

                                </div>
                            </div>
                            <a href="" class="follow-a"> <i class="fa fa-plus" style="margin-right: 2px"> </i> 关注</a>
                        </div>

                    </li><li>
                        <div class="author">
                            <a class="user-img-a" href="">
                                <img src="images/user-05.png" alt="">
                            </a>
                            <div class="info">
                                <span class="tag">作者</span>
                                <span class="name"> <a href=""> 测试用户 </a></span>
                                <div class="meta">
                                    <span class="publish-time">写了319.7K字 · 17.2K喜欢</span>

                                </div>
                            </div>
                            <a href="" class="follow-a"> <i class="fa fa-plus" style="margin-right: 2px"> </i> 关注</a>
                        </div>

                    </li><li>
                        <div class="author">
                            <a class="user-img-a" href="">
                                <img src="images/user-05.png" alt="">
                            </a>
                            <div class="info">
                                <span class="tag">作者</span>
                                <span class="name"> <a href=""> 测试用户 </a></span>
                                <div class="meta">
                                    <span class="publish-time">写了319.7K字 · 17.2K喜欢</span>

                                </div>
                            </div>
                            <a href="" class="follow-a"> <i class="fa fa-plus" style="margin-right: 2px"> </i> 关注</a>
                        </div>

                    </li>
                </ul>
            </div>
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