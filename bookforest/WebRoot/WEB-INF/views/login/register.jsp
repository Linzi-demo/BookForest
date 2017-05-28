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
		<link rel="stylesheet" href="plugins/fontawesome/css/font-awesome.min.css">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>

    <link rel="stylesheet" href="login-static/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrapValidator.css">
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
        <div class="col-md-6 col-md-offset-3">


            <!-- Start Sign In Form -->
            <form id="registerForm" action="#" class="fh5co-form animate-box" data-animate-effect="fadeIn">
                <h2>用户注册</h2>
                <!-- <div class="form-group">
                    <div class="alert alert-success" role="alert">Your info has been saved.</div>
                </div> -->
                <div class="form-group">
                    <label for="name" class="sr-only">用户名</label>
                    <input type="text" name="username" class="form-control" id="name" placeholder="用户名" autocomplete="off">
                </div>
                <div class="form-group">
                    <label for="email" class="sr-only">邮箱</label>
                    <input type="email" name="email" class="form-control" id="email" placeholder="邮箱" autocomplete="off">
                </div>
                <div class="form-group">
                    <label for="password" class="sr-only">密码</label>
                    <input type="password" name="userpwd" class="form-control" id="password" placeholder="密码" autocomplete="off">
                </div>
                <div class="form-group">
                    <label for="re-password" class="sr-only">确认密码</label>
                    <input type="password"  name="userpwdcheck" class="form-control" id="re-password" placeholder="确认密码" autocomplete="off">
                </div>
                <!-- <div class="form-group">
                    <label for="checkcode" class="sr-only">验证码</label>
                    <input type="text" name="checkcode" class="form-control" id="checkcode" placeholder="验证码" autocomplete="off" style="width: 75%;float: left;">
                    <div id="v_container"  style="width: 100px;height: 50px ;float: left;" ></div>
                </div> -->
                <div class="row">
                	<div class="form-group col-sm-8">
                		<label for="checkcode" class="sr-only">验证码</label>
                    <input type="text" name="checkcode" class="form-control" id="checkcode" placeholder="验证码" autocomplete="off" >
                	</div>
                	<div class="col-sm-4">
                		<div id="v_container"  style="width: 100px;height: 50px ;float: left;" ></div>
                	</div>
                </div>
                
                <div class="form-group" style="clear: left;padding-top: 15px" >
                    <p>已有账号? <a href="login">登录</a></p>
                </div>
                <div class="form-group">
                    <input type="submit" value="注册" class="btn btn-primary">
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
<script type="text/javascript" src="js/bootstrapValidator.min.js"></script>
<!-- Placeholder -->
<script src="login-static/js/jquery.placeholder.min.js"></script>
<!-- Waypoints -->
<script src="login-static/js/jquery.waypoints.min.js"></script>
<!-- Main JS -->
<script src="login-static/js/main.js"></script>
<script src="js/gVerify.js"></script>
<script type="text/javascript">
var verifyCode = new GVerify("v_container");
$(document).ready(function() {
    $('#registerForm').bootstrapValidator({
       /*  container: 'tooltip', */
        trigger: 'blur',
		
        feedbackIcons: {
            valid: 'fa fa-check',
            invalid: 'fa fa-remove',
            validating: 'fa fa-circle-o-notch'
        },
        fields: {
        	username: {//验证input项：验证规则
                message: 'The username is not valid',
                validators: {
                    notEmpty: {//非空验证：提示消息
                        message: '用户名不能为空'
                    },
                    stringLength: {
                        min: 6,
                        max: 30,
                        message: '用户名长度必须在6到30之间'
                    },
                    threshold :  6 , //有6字符以上才发送ajax请求，（input中输入一个字符，插件会向服务器发送一次，设置限制，6字符以上才开始）
                    remote: {//ajax验证。server result:{"valid",true or false} 向服务发送当前input name值，获得一个json数据。例表示正确：{"valid",true}  
                        url: 'userNameCheck',//验证地址
                        message: '用户已存在',//提示消息
                        delay :  2000,//每输入一个字符，就发ajax请求，服务器压力还是太大，设置2秒发送一次ajax（默认输入一个字符，提交一次，服务器压力太大）
                        type: 'POST'//请求方式
                        /**自定义提交数据，默认值提交当前input value
                         *  data: function(validator) {
                              return {
                                  password: $('[name="passwordNameAttributeInYourForm"]').val(),
                                  whatever: $('[name="whateverNameAttributeInYourForm"]').val()
                              };
                           }
                         */
                    },
                    regexp: {
                        regexp: /^[a-zA-Z0-9_\.]+$/,
                        message: '用户名由数字字母和下划线组成'
                    }
                }
            },
            userpwd: {
                validators: {
                    stringLength: {
                        min: 6,
                        message: '长度不足6位'
                    },
                    notEmpty: {
                        message: '密码不能为空'
                    },
                    validators: {
                        notEmpty: {
                            message: '密码不能为空'
                        },
                        stringLength: {
                            min: 6,
                            max: 30,
                            message: '用户名长度必须在6到30之间'
                        },
                        identical: {//相同
                            field: 'userpwdcheck', //需要进行比较的input name值
                            message: '两次密码不一致'
                        },
                        different: {//不能和用户名相同
                            field: 'username',//需要进行比较的input name值
                            message: '不能和用户名相同'
                        },
                        regexp: {
                            regexp: /^[a-zA-Z0-9_\.]+$/,
                            message: '含非法字符！'
                        }
                    }
                }
            },
            userpwdcheck: {
                message: '密码无效',
                validators: {
                    notEmpty: {
                        message: '确认密码不能为空'
                    },
                    stringLength: {
                        min: 6,
                        max: 30,
                        message: '密码长度必须在6到30之间'
                    },
                    identical: {//相同
                        field: 'userpwd',
                        message: '两次密码不一致'
                    },
                    different: {//不能和用户名相同
                        field: 'username',
                        message: '不能和用户名相同'
                    },
                    regexp: {//匹配规则
                        regexp: /^[a-zA-Z0-9_\.]+$/,
                        message: '含非法字符！'
                    }
                }
            },
            email: {
                validators: {
                    notEmpty: {
                        message: '邮件不能为空'
                    },
                    emailAddress: {
                        message: '请输入正确的邮件地址如：123@qq.com'
                    },
                    threshold :  7 , //有6字符以上才发送ajax请求，（input中输入一个字符，插件会向服务器发送一次，设置限制，6字符以上才开始）
                    remote: {//ajax验证。server result:{"valid",true or false} 向服务发送当前input name值，获得一个json数据。例表示正确：{"valid",true}  
                        url: 'emailCheck',//验证地址
                        message: '邮箱已注册！',//提示消息
                        delay :  2000,//每输入一个字符，就发ajax请求，服务器压力还是太大，设置2秒发送一次ajax（默认输入一个字符，提交一次，服务器压力太大）
                        type: 'POST'//请求方式
                       
                    }
                }
            },
            checkcode: {
            	                 validators: {
            	                	 
            	                	 notEmpty: {
            	                         message: '验证码不能为空'
            	                     },
            	                	 stringLength: {
            	                         min: 4,
            	                         max: 4,
            	                         message: '验证码错误！'
            	                     },
	                                 callback: {
	                                	 
	                                     message: '验证码错误！',
	                                     callback: function(value, validator) {
	                                         	var b=verifyCode.validate(value);
	                                         	if(b==false)
	                                         		{
	                                         			verifyCode.refresh();
	                                         			return b;
	                                         		}
	                                         	else
	                                         		{
	                                         			return b;
	                                         		}
	            	                         }
	            	                     }
            	                 }
                         }
            
        }
    });
});
</script>
</body>
</html>
