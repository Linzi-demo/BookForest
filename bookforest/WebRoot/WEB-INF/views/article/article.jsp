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

<div class="show-footer">

                <a class="bookmark-a" href=""> <i class="fa fa-tag">书签</i> </a>
                <a class="bookmark-a" href=""> <i class="fa fa-tag">书签</i> </a>
                <a class="bookmark-a" href=""> <i class="fa fa-tag">书签</i> </a>


        <div class="copyright" data-toggle="tooltip" data-html="true" data-original-title="转载请联系作者获得授权，并标注“简书作者”。">
            © 著作权归作者所有
        </div>
        <div class="modal-wrap" data-report-note>
            <a id="report-modal">举报文章</a>
        </div>
    </div>

    <div class="follow-detail">
        <div class="info">
            <a class="avatar" href="/u/14ef73b86f00">
                <img src="//upload.jianshu.io/users/upload_avatars/4014775/7bee342724a9.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/144/h/144" alt="144" />
            </a>
            <a class="btn btn-success follow"><i class="fa fa-plus" style="margin-right: 6px"></i><span>关注</span></a>
            <a class="title" href="/u/14ef73b86f00">xwgong</a>
            <p>写了 166819 字，被 5836 人关注，获得了 5188 个喜欢</p>
        </div>
        <div class="signature">
            <span>你好，我是湘伟。愿意尝试同步体会我一年三百六十五天的点滴吗？我平凡的日子里也许有小小的闪光点可...</span>
        </div>
    </div>
    <div class="meta-bottom">
        <div class="like">
            <div class="btn like-group">
                <div class="btn-like">
                    <a href="">
                        <i class="fa fa-heart"></i>
                        喜欢
                    </a>
                </div>
                <div class="modal-wrap-2">
                    <a href="">42</a>
                </div>
            </div>
        </div>
        <div class="like" style="float: right">
            <div class="btn like-group">
                <div class="btn-like">
                    <a href="">
                        <i class="fa fa-bookmark"></i>
                        收藏
                    </a>
                </div>
                <div class="modal-wrap-2">
                    <a href="">42</a>
                </div>
            </div>
        </div>
    </div>
    <div class="comment-list">
        <div>
            <form class="new-comment" action="">
                <a class="avatar" href="">
                    <img src="images/user-05.png" alt="">
                </a>
                <textarea name="comment" id="" placeholder="请写下你的评论..."></textarea>
                <div class="write-function-block">
                    <a class="btn btn-send">发送</a>
                    <a class="cancel">取消</a>
                </div>
            </form>
        </div>
        <div class="normal-comment-list">
            <ul>
                <li class="top">
                    <span>24条评论</span>
                </li>
                <li>
                    <div class="commentor">
                        <a class="avatar" href="">
                            <img src="images/user-05.png" alt="">
                        </a>
                        <div class="comentor-info">
                            <a href="">测试用户</a>
                            <p>4楼 · 2017.05.28 07:55</p>
                        </div>
                    </div>
                    <div class="comment-wrap">
                        <p>许愿池里的王八，来钱最轻松</p>
                        <div class="comment-tool">
                            <a href="">
                                <i class="fa fa-thumbs-o-up"></i>
                                <span>3人赞</span>
                            </a>
                            <a href="">
                                <i class="fa fa-comment-o">
                                </i>
                                <span>回复</span>
                            </a>
                        </div>
                        <ul class="recommend">
                            <li>
                                <p>
                                    <a href="">
                                        测试用户2
                                    </a>
                                    :新的评论
                                </p>
                                <div class="bottom-tool">
                                    <span>2017.05.23 08:54</span>
                                    <a href="">
                                        <i class="fa fa-comment-o">
                                        </i>
                                        <span>回复</span>
                                    </a>
                                </div>
                            </li>
                            <li>
                                <p>
                                    <a href="">
                                        测试用户2
                                    </a>
                                    :新的评论
                                </p>
                                <div class="bottom-tool">
                                    <span>2017.05.23 08:54</span>
                                    <a href="">
                                        <i class="fa fa-comment-o">
                                        </i>
                                        <span>回复</span>
                                    </a>
                                </div>
                            </li>
                            <li>
                                <p>
                                    <a href="">
                                        测试用户2
                                    </a>
                                    :新的评论
                                </p>
                                <div class="bottom-tool">
                                    <span>2017.05.23 08:54</span>
                                    <a href="">
                                        <i class="fa fa-comment-o">
                                        </i>
                                        <span>回复</span>
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
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