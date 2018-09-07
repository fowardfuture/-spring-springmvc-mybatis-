<%--
  Created by IntelliJ IDEA.
  User: xiao
  Date: 2018/8/3
  Time: 21:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>zz商城</title>
    <link href="css/slider.css" rel="stylesheet" type="text/css"/>
    <link href="css/common.css" rel="stylesheet" type="text/css"/>
    <link href="css/index.css" rel="stylesheet" type="text/css"/>

</head>
<body>

<div class="container header">
    <div class="span5">
        <div class="logo">
            <a href="">
                <img src="image/r___________renleipic_01/logo.gif" alt="传智播客"/>
            </a>
        </div>
    </div>
    <div class="span9">
        <div class="headerAd">
            <img src="image/header.jpg" width="320" height="50" alt="正品保障" title="正品保障"/>
        </div>	</div>
    <div class="span10 last">
        <div class="topNav clearfix">
            <ul>
                <li id="headerLogin" class="headerLogin" style="display: list-item;">
                    <a href="${pageContext.request.contextPath}/login">登录</a>|
                </li>
                <li id="headerRegister" class="headerRegister" style="display: list-item;">
                    <a href="${pageContext.request.contextPath}/register">注册</a>|
                </li>
                <li id="headerUsername" class="headerUsername"></li>
                <li id="headerLogout" class="headerLogout">
                    <a>[退出]</a>|
                </li>
                <li>
                    <a>会员中心</a>
                    |
                </li>
                <li>
                    <a>购物指南</a>
                    |
                </li>
                <li>
                    <a>关于我们</a>

                </li>
            </ul>
        </div>
        <div class="cart">
            <a  href="">购物车</a>
        </div>
        <div class="phone">
            客服热线:
            <strong>96008/53277764</strong>
        </div>
    </div>
    <div class="span24">
        <ul class="mainNav" id="menus">

            <li>
                <a href="/index">首页</a>
                |
            </li>
        </ul>
    </div>

            <%--<li>--%>
                <%--<a href="">定制套餐</a>--%>
                <%--|--%>
            <%--</li>--%>
            <%--<li>--%>
                <%--<a >安全频道</a>--%>
                <%--|--%>
            <%--</li>--%>
            <%--<li>--%>
                <%--<a>商城卡</a>--%>
                <%--|--%>
            <%--</li>--%>
            <%--<li>--%>
                <%--<a>蔬菜基地</a>--%>
                <%--|--%>
            <%--</li>--%>
            <%--<li>--%>
                <%--<a>节气养生</a>--%>
                <%--|--%>
            <%--</li>--%>
            <%--<li>--%>
                <%--<a>便民服务</a>--%>
                <%--|--%>
            <%--</li>--%>




</div>

<div class="container index">


    <div class="span24">
        <div id="hotProduct" class="hotProduct clearfix">
            <div class="title">
                <strong>热门商品</strong>
                <!-- <a  target="_blank"></a> -->
            </div>
            <ul class="tab">
                <li class="current">
                    <a href="?tagIds=1" target="_blank"></a>
                </li>
                <li>
                    <a  target="_blank"></a>
                </li>
                <li>
                    <a target="_blank"></a>
                </li>
            </ul>
            <!-- 					<div class="hotProductAd">
                        <img src="${pageContext.request.contextPath}/image/a.jpg" width="260" height="343" alt="热门商品" title="热门商品">
            </div> -->
            <ul class="tabContent" id="hot" style="display: block;">

            </ul>

        </div>
    </div>
    <div class="span24">
        <div id="newProduct" class="newProduct clearfix">
            <div class="title">
                <strong>最新商品</strong>
                <a  target="_blank"></a>
            </div>
            <ul class="tab">
                <li class="current">
                    <a href="?tagIds=2" target="_blank"></a>
                </li>
                <li>
                    <a  target="_blank"></a>
                </li>
                <li>
                    <a target="_blank"></a>
                </li>
            </ul>
            <!-- 					<div class="newProductAd">
                                                <img src="${pageContext.request.contextPath}/image/q.jpg" width="260" height="343" alt="最新商品" title="最新商品">
                                    </div>
                                     -->
            <ul class="tabContent" id="new" style="display: block;">
                <%--<li>--%>
                    <%--<a  target="_blank"><img src="image/l.jpg" data-original="http://storage.shopxx.net/demo-image/3.0/201301/4a51167a-89d5-4710-aca2-7c76edc355b8-thumbnail.jpg" style="display: block;"></a>									</li>--%>
                <%--<li>--%>
                    <%--<a  target="_blank"><img src="image/m.jpg" style="display: block;"></a>									</li>--%>

                <%--<li>--%>
                    <%--<a target="_blank"><img src="image/n.jpg" style="display: block;"></a>									</li>--%>
                <%--<li>--%>
                    <%--<a target="_blank"><img src="image/o.jpg" style="display: block;"></a>									</li>--%>
                <%--<li>--%>
                    <%--<a target="_blank"><img src="image/p.jpg" style="display: block;"></a>									</li>--%>
                <%--<li>--%>
                    <%--<a target="_blank"><img src="image/m.jpg" style="display: block;"></a>									</li>--%>
                <%--<li>--%>
                    <%--<a  target="_blank"><img src="image/15.jpg" style="display: block;"></a>--%>
                <%--<li>--%>
                    <%--<a  target="_blank"><img src="image/l.jpg" data-original="http://storage.shopxx.net/demo-image/3.0/201301/b499fb5e-999f-431b-a375-172ee09e4a3e-thumbnail.jpg" style="display: block;" /></a>--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<a  target="_blank"><img src="image/l.jpg" data-original="http://storage.shopxx.net/demo-image/3.0/201301/b499fb5e-999f-431b-a375-172ee09e4a3e-thumbnail.jpg" style="display: block;" /></a>--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<a  target="_blank"><img src="image/l.jpg" data-original="http://storage.shopxx.net/demo-image/3.0/201301/b499fb5e-999f-431b-a375-172ee09e4a3e-thumbnail.jpg" style="display: block;" /></a>--%>
                <%--</li>--%>
            </ul>

        </div>
    </div>
    <div class="span24">
        <div class="friendLink">
            <dl>
                <dt>新手指南</dt>
                <dd>
                    <a  target="_blank">支付方式</a>
                    |
                </dd>
                <dd>
                    <a  target="_blank">配送方式</a>
                    |
                </dd>
                <dd>
                    <a  target="_blank">售后服务</a>
                    |
                </dd>
                <dd>
                    <a  target="_blank">购物帮助</a>
                    |
                </dd>
                <dd>
                    <a  target="_blank">蔬菜卡</a>
                    |
                </dd>
                <dd>
                    <a  target="_blank">礼品卡</a>
                    |
                </dd>
                <dd>
                    <a target="_blank">银联卡</a>
                    |
                </dd>
                <dd>
                    <a  target="_blank">亿家卡</a>
                    |
                </dd>

                <dd class="more">
                    <a >更多</a>
                </dd>
            </dl>
        </div>
    </div>
</div>
<div class="container footer">
    <div class="span24">
        <div class="footerAd">
            <img src="image/footer.jpg" width="950" height="52" alt="我们的优势" title="我们的优势">
        </div>	</div>
    <div class="span24">
        <ul class="bottomNav">
            <li>
                <a>关于我们</a>
                |
            </li>
            <li>
                <a>联系我们</a>
                |
            </li>
            <li>
                <a>招贤纳士</a>
                |
            </li>
            <li>
                <a>法律声明</a>
                |
            </li>
            <li>
                <a>友情链接</a>
                |
            </li>
            <li>
                <a target="_blank">支付方式</a>
                |
            </li>
            <li>
                <a target="_blank">配送方式</a>
                |
            </li>
            <li>
                <a>服务声明</a>
                |
            </li>
            <li>
                <a>广告声明</a>

            </li>
        </ul>
    </div>
    <div class="span24">
        <div class="copyright">Copyright © 2005-2015 网上商城 版权所有</div>
    </div>
</div>
        <script src="${pageContext.request.contextPath}js/jquery-1.11.0.min.js"></script>
        <script type="text/javascript">

//加载数据库中的导航栏数据
$(document).ready(function () {

    $.ajax({

        type: "POST", //请求数据方式 是POST请求

        url: "getmenudate", //这是所需要异步的页面html路径

        dataType: "json", //数据类型是JSON

        //数据根据ID进行变化

        error: function (request) {

            alert("发送请求失败！");

        },
        success: function(data){

            for (var i = 0; i < data.length; i++) {

                $("#menus").append("<li><a href='secondmenucid?cid="+data[i].cid+"'>"+data[i].cname+"</a></li>")


            }
        }

    });

    }
);
//加载热门商品图片
$(document).ready(function () {

        $.ajax({

            type: "POST", //请求数据方式 是POST请求

            url: "findby_hotproduct", //这是所需要异步的页面html路径

            dataType: "json", //数据类型是JSON

            //数据根据ID进行变化

            error: function (request) {

                alert("发送请求失败！");

            },
            success: function(date){


                for (var i = 0; i < date.length; i++) {

                    $("#hot").append("<li><a  target=\"_blank\"href='findby_productid?pid="+date[i].pid+"'>"+"<img  src="+date[i].image+"></a>"+"</li>")


                }
            }

        });

    }
);
//加载最新商品
$(document).ready(function () {

        $.ajax({

            type: "POST", //请求数据方式 是POST请求

            url: "findby_newproduct", //这是所需要异步的页面html路径

            dataType: "json", //数据类型是JSON

            //数据根据ID进行变化

            error: function (request) {

                alert("发送请求失败！");

            },
            success: function(date){


                for (var i = 0; i < date.length; i++) {

                    $("#new").append("<li><a target=\"_blank\"href='findby_productid?pid="+date[i].pid+"'>"+"<img src="+date[i].image+"></a>"+"</li>")


                }
            }

        });

    }
);
//        </script>
</body>
</html>
