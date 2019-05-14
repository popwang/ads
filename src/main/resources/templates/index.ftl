<!DOCTYPE html>
<html class="gwd_" lang="en"><head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"><style type="text/css">@charset "UTF-8";[ng\:cloak],[ng-cloak],[data-ng-cloak],[x-ng-cloak],.ng-cloak,.x-ng-cloak,.ng-hide:not(.ng-hide-animate){display:none !important;}ng\:form{display:block;}.ng-animate-shim{visibility:hidden;}.ng-anchor{position:absolute;}</style>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

    <style>
        body {
            padding-top: 60px;
        }
    </style>
    <title>欢迎使用扬尘监测系统</title>
    <link href="login/bootstrap.css" rel="stylesheet">

    <link href="login/login-register.css" rel="stylesheet">
    <link rel="stylesheet" href="login/font-awesome.css">

    <script src="login/jquery-3.js" type="text/javascript"></script>
    <script src="login/bootstrap.js" type="text/javascript"></script>
    <script src="login/login-register.js" type="text/javascript"></script>
    <script src="login/login.js">

    </script>
    <script src="login/angular.js"></script>
    <script src="login/toaster.js">

    </script><script src="login/angular-animate.js">

</script><link href="login/toaster.css" rel="stylesheet"><style type="text/css">
</style></head>
<body id="body" ng-app="myApp" ng-controller="myCtrl" style="height: 636px;" class="ng-scope">
<div align="center">
    <div id="toast-container" ng-class="[config.position, config.animation]" class="ng-scope toast-top-right"><!-- ngRepeat: toaster in toasters --></div>
</div>
<nav class="bg-canvas" style="background:url(img/bg-blue.jpg) center center;background-size:100% 100%;">

</nav>
<section class="cont">
    <section>
        <nav class="cont_left">
            <p style="text-align:right;">
            	<h1>欢迎使用扬尘监测系统</h1>
            </p>
            <p style="text-align:right; font-size: 20px;">绿水青山就是金山银山</p>
            <p></p>
        </nav>
        <nav class="cont_right">
            <h2>平台登陆</h2>
            <div class="form-group">
                <p>
                    <i class="fa fa-user"></i><input class="form-control" id="username" name="login" onkeyup="value=value.replace(/[^\a-\z\A-\Z0-9]/g,'')" maxlength="20" placeholder="请输入用户名" style="" type="text">
                </p>
                <p>
                    <i class="fa fa-key"></i> <input class="form-control" id="password" name="pwdPrompt" onkeyup="value=value.replace(/[^\a-\z\A-\Z0-9]/g,'')" maxlength="20" placeholder="请输入密码" style="" type="password"> <input onkeyup="value=value.replace(/[^\a-\z\A-\Z0-9]/g,'')" class="form-control" id="exampleInputPassword3" name="pwd" maxlength="20" placeholder="请输入密码" style="display: none;" type="text">
                    <a class="eye"><i class="fa fa-eye-slash"></i></a>
                </p>
            </div>
            <button type="button" class="btn btn-primary btn-lg btn-block" id="login_btn" ng-click="clickk()" style="">登录</button>
            <div class="modal-footer" style="border-top: 1px solid black;">
            </div>

        </nav>
    </section>
</section>

<div class="modal fade login" id="loginModal">
    <div class="modal-dialog login animated">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title">用户注册</h4>
            </div>
            <div class="modal-body">
                <div class="box">
                    <div class="content">
                        <div class="social">
                            <div align="left">
                                <select ng-model="juese" class="form-control ng-pristine ng-untouched ng-valid ng-not-empty" ng-options="x.roleid as x.rolename for x in roles" ng-change="roleChange()" style="float: left; color: blue; width: 33%;"><option label="高管" value="number:1">高管</option><option label="部门经理" value="number:2">部门经理</option><option label="项目经理" value="number:3">项目经理</option><option label="员工" value="number:4" selected="selected">员工</option></select> <select ng-model="bumen" class="form-control ng-pristine ng-untouched ng-valid ng-empty" ng-options="x.id as x.name for x in deptInfo" style="float: left; color: blue; width: 33%;" ng-show="isShowbumen"><option value="?" selected="selected"></option></select> <select ng-model="xiangmu" class="form-control ng-pristine ng-untouched ng-valid ng-empty" ng-options="x.id as x.name for x in projectInfo" ng-show="isShowxiangmu" style="float: left; color: blue; width: 33%;"><option value="?" selected="selected"></option></select>
                            </div>
                        </div>
                        <div class="division">
                            <div class="line l"></div>
                            <span>账号信息</span>
                            <div class="line r"></div>
                        </div>
                        <div class="error"></div>
                    </div>
                </div>
                <div class="box">
                    <div class="content registerBox">
                        <div class="form">
                            <form method="post" html="{:multipart=&gt;true}" data-remote="true" action="/register" accept-charset="UTF-8" class="ng-pristine ng-valid">
                                <input id="usernameRe" class="form-control" placeholder="用户姓名" name="username" type="text"> <input id="loginnameRe" class="form-control" onkeyup="value=value.replace(/[^\a-\z\A-\Z0-9]/g,'')" placeholder="登录名" name="loginname" type="text"> <input id="passwordRe" class="form-control" onkeyup="value=value.replace(/[^\a-\z\A-\Z0-9]/g,'')" placeholder="密码" name="password" type="password"> <input id="password_confirmationRe" class="form-control" onkeyup="value=value.replace(/[^\a-\z\A-\Z0-9]/g,'')" placeholder="重复密码" name="password_confirmation" type="password"> <input class="btn btn-default btn-register" value="注册" name="commit" ng-click="registerClick()" type="button">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body></html>