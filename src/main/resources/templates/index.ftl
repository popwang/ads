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

</script><link href="login/toaster.css" rel="stylesheet"><style type="text/css">#kf-content-div a,
#kf-content-div p {
    border: 0px !important;
    padding: 0px !important;
    margin: 0px !important;
}

#kf-wiki-div a:hover,
#kf-content-div a:focus {
    text-decoration: none !important;
}

#kf-wiki-div a {
    text-decoration: none !important;
    color: #0645AD !important;
    background: none repeat scroll 0% 0% transparent !important;
}

#kf-wiki-div dt {
    margin-bottom: 0.1em !important;
    font-weight: bold !important;
}

#kf-wiki-div dd {
    margin-left: 1.6em !important;
    margin-bottom: 0.1em !important;
}

/**************/
#kf-my-add-btn {
    display: none;
    height: 18px;
    width: 18px;
    position: fixed;
    z-index: 2147483647;
    line-height: 18px;
    text-decoration: none;
    font: bold 12px/25px Arial;
    color: rgba(62, 87, 6, 0.53);
    background: -moz-linear-gradient(center top, rgba(165, 205, 78, 1) 0%, rgba(107, 143, 26, 1) 100%);
    opacity: 0.55;
    text-shadow: 1px 1px 1px rgba(255, 255, 255, .22);
    border-radius: 18px;
    box-shadow: 1px 1px 1px rgba(0, 0, 0, .29), inset 1px 1px 1px rgba(255, 255, 255, .44);
    transition: all 0.15s ease;
}

#kf-my-add-btn {
    color: rgba(62, 87, 6, 0.53);
    opacity: 0.55;
}

#kf-my-add-btn:hover {
    color: rgba(62, 87, 6, 1);
    opacity: 1;
}

#kf-add-loading-img {
    display: none;
    height: 24px;
    width: 24px;
    position: fixed;
    bottom: 20px;
    right: 20px;
    z-index: 2147483647;
    border-radius: 24px;
    box-shadow: 1px 1px 1px rgba(0, 0, 0, 0.29), 1px 1px 1px rgba(255, 255, 255, 0.24) inset;
}

#kf-content-div {
    opacity: 0;
    display: none;
    width: 320px;
    position: fixed;
    right: 20px;
    bottom: -190px;
    z-index: 2147483647;
    font: normal 12px/25px Arial, sans-serif;
    color: #222;
    background: transparent;
}

#kf-top-div {
    height: 40px;
    width: 320px;
    background: rgba(0, 0, 0, .05);
    border-radius: 20px 20px 0px 0px;
    line-height: 40px;
    text-align: center;
}

#kf-wiki-tab {
    width: 160px;
    color: rgba(255, 255, 255, .88);
    text-decoration: none;
    background: rgba(0, 152, 249, .6);
    float: left;
    font-size: 1em;
    border-radius: 20px 20px 0px 0px;
}

#kf-translator-tab {
    width: 160px;
    color: rgba(0, 0, 0, 0.25);
    text-decoration: none;
    background: transparent;
    font-size: 1em;
    float: left;
    border-radius: 20px 20px 0px 0px;
}

#kf-frame-div {
    box-shadow: 1px 1px 3px rgba(0, 0, 0, 0.33);
    text-align: left;
}

#kf-trans-div{
    font-weight: bold;width:300px;height:auto;background:rgba(233, 233, 233, 1);opacity:.8;padding:10px;max-height:190px;overflow:auto;
}

#kf-wiki-div {
    width: 300px;
    max-height: 190px;
    padding: 10px;
    background: #E9E9E9;
    opacity: 0.8;
    border: 0px;
    overflow: auto;
}

/*******/
.tipso_bubble,.tipso_bubble>.tipso_arrow{-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}.tipso_bubble{position:absolute;text-align:center;border-radius:6px;z-index:9999;padding:10px}.tipso_style{cursor:help;border-bottom:1px dotted}.tipso_bubble>.tipso_arrow{position:absolute;width:0;height:0;border:8px solid;pointer-events:none}.tipso_bubble.top>.tipso_arrow{border-color:#000 transparent transparent;top:100%;left:50%;margin-left:-8px}.tipso_bubble.bottom>.tipso_arrow{border-color:transparent transparent #000;bottom:100%;left:50%;margin-left:-8px}.tipso_bubble.left>.tipso_arrow{border-color:transparent transparent transparent #000;top:50%;left:100%;margin-top:-8px}.tipso_bubble.right>.tipso_arrow{border-color:transparent #000 transparent transparent;top:50%;right:100%;margin-top:-8px}</style></head>



<body id="body" ng-app="myApp" ng-controller="myCtrl" style="height: 636px;" class="ng-scope">
<div align="center">
    <div id="toast-container" ng-class="[config.position, config.animation]" class="ng-scope toast-top-right"><!-- ngRepeat: toaster in toasters --></div>
</div>
<nav class="bg-canvas">
    <iframe name="htm" src="img/bg-blue.jpg"></iframe>
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
</body></html>