<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header" style="margin-right: 30px">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="community" style="font-weight: 600;color: #009966;font-size: 23px">书林</a>
        </div>

        <!-- 左上角的导航 -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav" >
                <li ><a href="community"><i class="fa fa-home" style="margin-right: 3px"></i>主页<span class="sr-only">(current)</span></a></li>
               
                <li data-toggle="modal" data-target="#about"><a href="index" >关于</a></li>
            </ul>

			<ul id="btn-ul" class="nav navbar-nav navbar-right">
				<c:if test="${loginUser==null }">
					<li><a class="nav-a" href="login">登陆 | 注册</a></li>
				</c:if>
				<c:if test="${loginUser!=null }">
					<li class="dropdown user">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                            <img src="${loginUser.imgUrl }" alt="">
                        </a>
                        <ul id="user-choose" class="dropdown-menu" role="menu">
                            <li><a href="userpage?uid=${loginUser.userId }"> <i class="fa fa-user" style="margin-right: 10px"></i> 我的信息</a></li>
                            <li><a href="#lijiang"><i class="fa fa-bookmark" style="margin-right: 10px"></i>收藏的文章</a></li>
                            <li><a href="#shuiliandong"><i class="fa fa-heart" style="margin-right: 10px"></i>喜欢的文章</a></li>
                            <li><a href="#shuiliandong"><i class="fa fa-cog" style="margin-right: 10px"></i>设置</a></li>
                            <li><a href="signout"><i class="fa fa-sign-out" style="margin-right: 10px"></i>退出</a></li>
                        </ul>
                    </li>
			</c:if>
				<li><a class="nav-a-write" href="write"> <i class="fa fa-paint-brush" style="margin-right: 5px"></i> 写文章
					</a></li>
			</ul>
			

           

            <form class="navbar-form navbar-right" role="search" style="margin-right: 80px">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="搜索文章..">
                    <button type="button" class="btn btn-default">Go</button>
                </div>
            </form>



        </div>
    </div>
</nav>