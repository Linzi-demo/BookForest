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
<!--主体开始  -->
<div class="article-wrap" >

    <div class="article-main">
        <h3>${article.articleTitle }</h3>
        <div class="author">
            <a class="user-img-a" href="">
                <img src="${article.authorUser.imgUrl }" alt="">
            </a>
            <div class="info">
                <span class="tag">作者</span>
                <span class="name"> <a href=""> ${article.authorUser.userName } </a></span>
                <div class="meta">
                    <span class="publish-time">${article.date }</span>
                    <span class="wordage">字数 2323</span>
                    <span class="views-count">阅读 333</span>
                    <span class="comments-count">评论 32</span>
                    <span class="like-count">喜欢 10</span>
                </div>
            </div>

        </div>
        <!--文章区域-->
        <div class="show-content">
            ${article.content }
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