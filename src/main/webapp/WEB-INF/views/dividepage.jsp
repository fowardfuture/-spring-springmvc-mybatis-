<%--
  Created by IntelliJ IDEA.
  User: xiao
  Date: 2018/8/3
  Time: 21:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>网上商城</title>
    <link href="./css/common.css" rel="stylesheet" type="text/css">
    <link href="./css/product.css" rel="stylesheet" type="text/css">

</head>
<body>

<div class="container header">
    <div class="span5">
        <div class="logo">
            <a>
                <img src="./image/r___________renleipic_01/logo.gif" alt="传智播客">
            </a>
        </div>
    </div>
    <div class="span9">
        <div class="headerAd">
            <img src="image\r___________renleipic_01/header.jpg" alt="正品保障" title="正品保障" height="50" width="320">
        </div>	</div>
    <div class="span10 last">
        <div class="topNav clearfix">
            <ul>
                <li style="display: list-item;" id="headerLogin" class="headerLogin">
                    <a href="./会员登录.htm">登录</a>|
                </li>
                <li style="display: list-item;" id="headerRegister" class="headerRegister">
                    <a href="./会员注册.htm">注册</a>|
                </li>
                <li id="headerUsername" class="headerUsername"></li>
                <li id="headerLogout" class="headerLogout">
                    <a href="./index.htm">[退出]</a>|
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
            <a href="./购物车.htm">购物车</a>
        </div>
        <div class="phone">
            客服热线:
            <strong>96008/53277764</strong>
        </div>
    </div>
    <div class="span24">
        <ul class="mainNav" id="menus03">
            <li>
                <a href="index">首页</a>
                |
            </li>

        </ul>
    </div>

</div><div class="container productContent">
    <div class="span6">
        <div class="hotProductCategory" id="secondmenu">

        </div>


    </div>
    <div class="span18 last">

        <div class="productImage">
            <a title="" style="outline-style: none; text-decoration: none;" id="zoom" href="http://image/r___________renleipic_01/bigPic1ea8f1c9-8b8e-4262-8ca9-690912434692.jpg" rel="gallery">
                <div class="zoomPad"><img style="opacity: 1;" title="" class="medium" src="${pageContext.request.contextPath}/${productdate.image}"><div style="display: block; top: 0px; left: 162px; width: 0px; height: 0px; position: absolute; border-width: 1px;" class="zoomPup"></div><div style="position: absolute; z-index: 5001; left: 312px; top: 0px; display: block;" class="zoomWindow"><div style="width: 368px;" class="zoomWrapper"><div style="width: 100%; position: absolute; display: none;" class="zoomWrapperTitle"></div><div style="width: 0%; height: 0px;" class="zoomWrapperImage"><img src="" style="position: absolute; border: 0px none; display: block; left: -432px; top: 0px;"></div></div></div><div style="visibility: hidden; top: 129.5px; left: 106px; position: absolute;" class="zoomPreload">Loading zoom</div></div>
            </a>

        </div>
        <div class="name">${productdate.pname}</div>
        <div class="sn">
            <div>${productdate.pid}</div>
        </div>
        <div class="info">
            <dl>
                <dt>亿家价:</dt>
                <dd>
                    <strong>￥：${productdate.shop_price}元</strong>
                    参 考 价：
                    <del>￥${productdate.market_price}元</del>
                </dd>
            </dl>
            <dl>
                <dt>促销:</dt>
                <dd>
                    <a target="_blank" title="限时抢购 (2014-07-30 ~ 2015-01-01)">限时抢购</a>
                </dd>
            </dl>
            <dl>
                <dt>    </dt>
                <dd>
                    <span>    </span>
                </dd>
            </dl>
        </div>
        <form action="addshop_cart" method="post" id="shopcart">
        <div class="action">

            <dl class="quantity">
                <dt>购买数量:</dt>
                <dd>
                    <input id="quantity" name="pcount" value="1" maxlength="4" onpaste="return false;" type="text">
                    <div>
                        <span id="increase" class="increase">&nbsp;</span>
                        <span id="decrease" class="decrease">&nbsp;</span>
                    </div>
                </dd>
                <dd>
                    件
                </dd>
            </dl>
            <input type="hidden" name="pid" value="${productdate.pid}"/>
            <div class="buy">
                <input id="addCart" class="addCart" value="加入购物车" type="button" onclick="sendForm()">

            </div>
        </div>
        </form>
        <div id="bar" class="bar">
            <ul>
                <li id="introductionTab">
                    <a href="#introduction">商品介绍</a>
                </li>

            </ul>
        </div>

        <div id="introduction" name="introduction" class="introduction">
            <div class="title">
                <strong>${productdate.pdesc}</strong>
            </div>
            <div>
                <img src="${pageContext.request.contextPath}/${productdate.image}">
            </div>
        </div>



    </div>
</div>
<div class="container footer">
    <div class="span24">
        <div class="footerAd">
            <img src="image\r___________renleipic_01/footer.jpg" alt="我们的优势" title="我们的优势" height="52" width="950">
        </div>
    </div>
    <div class="span24">
        <ul class="bottomNav">
            <li>
                <a href="#">关于我们</a>
                |
            </li>
            <li>
                <a href="#">联系我们</a>
                |
            </li>
            <li>
                <a href="#">诚聘英才</a>
                |
            </li>
            <li>
                <a href="#">法律声明</a>
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
                <a >SHOP++官网</a>
                |
            </li>
            <li>
                <a>SHOP++论坛</a>

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

                error: function (request) {

                    alert("发送请求失败！");

                },
                success: function(data){
                    /*<![CDATA[*/
                    for (var i = 0; i < data.length; i++) {

                        $("#menus03").append("<li><a href='secondmenucid?cid="+data[i].cid+"'>"+data[i].cname+"</a></li>");
                        /*]]>*/
                    }
                }

            });

        }
    );
    //加载二级目录
    $(document).ready(function () {

            $.ajax({

                type: "get",

                url: "getsecondmenudate",

                dataType: "json",

                error: function (request) {

                    alert("发送请求失败！");

                },
                success: function(data){
                    /*<![CDATA[*/
                    $("#secondmenu").append("<dl ><dt><a>"+ data[0].cname+"</a></dt>");
                    for (var i = 0; i < data.length-1; i++) {

                        if(data[i].cname!=data[i+1].cname){
                            $("#secondmenu").append("<dd><a csid='"+data[i].csid+"'>"+ data[i].csname+"</a></dd></dl>");
                            $("#secondmenu").append("<dl><dt><a >"+ data[i+1].cname+"</a></dt>");
                        }
                        else
                        {
                            $("#secondmenu").append("<dd><a csid='"+data[i].csid+"'>"+ data[i].csname+"</a></dd>");
                        }

                    }

                    $("#secondmenu").append("<dd><a csid='"+data[i].csid+"' >"+ data[i].csname+"</a></dd></dl>");

                    /*]]>*/

                }

            });

        }
    );
   //发送购物车数据
    function sendForm()
    {
        document.getElementById("shopcart").submit();
    }
</script>
</body>
</html>
