<%--
  Created by IntelliJ IDEA.
  User: xiao
  Date: 2018/8/3
  Time: 21:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0043)http://localhost:8080/mango/cart/list.jhtml -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>购物车</title>

    <link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/css/cart.css" rel="stylesheet" type="text/css">


</head>
<body>
<div class="container header">
    <div class="span5">
        <div class="logo">
            <a href="http://localhost:8080/mango/">
                <img src="${pageContext.request.contextPath}/image/r___________renleipic_01/logo.gif" alt="传智播客">
            </a>
        </div>
    </div>
    <div class="span9">
        <div class="headerAd">
            <img src="${pageContext.request.contextPath}/image/header.jpg" width="320" height="50" alt="正品保障" title="正品保障">
        </div>	</div>
    <div class="span10 last">
        <div class="topNav clearfix">
            <ul>
                <li id="headerLogin" class="headerLogin" style="display: list-item;">
                    <a href="${pageContext.request.contextPath}/会员登录.htm">登录</a>|
                </li>
                <li id="headerRegister" class="headerRegister" style="display: list-item;">
                    <a href="${pageContext.request.contextPath}/会员注册.htm">注册</a>|
                </li>
                <li id="headerUsername" class="headerUsername"></li>
                <li id="headerLogout" class="headerLogout">
                    <a href="${pageContext.request.contextPath}/index.htm">[退出]</a>|
                </li>
                <li>
                    <a >会员中心</a>
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
            <a href="${pageContext.request.contextPath}/购物车.htm">购物车</a>
        </div>
        <div class="phone">
            客服热线:
            <strong>96008/53277764</strong>
        </div>
    </div>
    <div class="span24">
        <ul class="mainNav" id="menus">
            <li>
                <a href="${pageContext.request.contextPath}/index">首页</a>
                |
            </li>


        </ul>
    </div>

</div>	<div class="container cart">
    <div class="span24">
        <div class="step step1">

        </div>
        <table id="shopcarts">
            <tbody><tr >
                <th>图片</th>
                <th>商品</th>
                <th>价格</th>
                <th>数量</th>
                <th>小计</th>
                <th>操作</th>
            </tr>

            </tbody></table>
        <dl id="giftItems" class="hidden" style="display: none;">
        </dl>
        <div class="total">
            <em id="promotion"></em>
            <em>

            </em>
            赠送积分: <em id="effectivePoint"><a id="score"> </a></em>
            商品金额: <strong id="effectivePrice"><a id="totalprice"> </a></strong>
        </div>
        <div class="bottom">
            <a href="javascript:;" id="clear" class="clear">清空购物车</a>
            <a href="${pageContext.request.contextPath}/会员登录.htm" id="submit" class="submit">提交订单</a>
        </div>
    </div>
</div>
<div class="container footer">
    <div class="span24">
        <div class="footerAd">
            <img src="${pageContext.request.contextPath}/image/footer.jpg" width="950" height="52" alt="我们的优势" title="我们的优势">
        </div>	</div>
    <div class="span24">
        <ul class="bottomNav">
            <li>
                <a >关于我们</a>
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
                <a  target="_blank">配送方式</a>
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
    //设置全局总计
    var  total_price=0;
    //加载购物车
    $(document).ready(function () {

            $.ajax({

                type: "post",

                url: "select_shopcart",

                dataType: "json",

                error: function (request) {

                    alert("发送请求失败！");

                },
                success: function(data){
                    /*<![CDATA[*/
                    console.log(data)
                    for (var i=0;i<data.length;i++)
                    {
                        total_price+=data[i].partshop_carts.shopprice*data[i].pcount;
                        $("#shopcarts").append("<tr><td width='60'><img src='"+data[i].partshop_carts.pimage+"'></td>" +
                            "<td> <a target='_blank'>"+ data[i].partshop_carts.pname+"</a></td>" +
                            "<td>+￥" +data[i].partshop_carts.shopprice +" </td> " +
                            "<td class='quantity' width='60'>"+data[i].pcount +" </td >" +
                            "<td width='140' class='subtotal'> ￥"+data[i].partshop_carts.shopprice*data[i].pcount+"</td>" +
                            "<td><a class='delete' pid='"+data[i].partshop_carts.pid +"' onclick='deletepart(this)'> 删除</a></td></tr>");
                    }

                    /*]]>*/
                    document.getElementById("totalprice").innerHTML="￥"+total_price+"元"
                    document.getElementById("score").innerHTML=" "+total_price+" "
                }

            });

        }
    );
    //删除部分商品并加载购物车
    function deletepart(e) {
        var date=$(e).attr("pid");
        $.ajax({

            type: "post",

            url: "delete_partshopcart",

            dataType: "json",

            data:{ "pid" :date },

            error: function (request) {

                alert("发送请求失败！");

            },
            success: function(data){
                /*<![CDATA[*/
                document.getElementById("shopcarts").innerHTML="";
                $("#shopcarts").append("<tbody><tr><th>图片</th><th>商品</th><th>价格</th><th>数量</th><th>小计</th><th>操作</th></tr></tbody>");
                total_price=0;
                for (var i=0;i<data.length;i++)
                {
                    total_price+=data[i].partshop_carts.shopprice*data[i].pcount;
                    $("#shopcarts").append("<tr><td width='60'><img src='"+data[i].partshop_carts.pimage+"'></td>" +
                        "<td> <a target='_blank'>"+ data[i].partshop_carts.pname+"</a></td>" +
                        "<td>+￥" +data[i].partshop_carts.shopprice +" </td> " +
                        "<td class='quantity' width='60'>"+data[i].pcount +" </td >" +
                        "<td width='140' class='subtotal'> ￥"+data[i].partshop_carts.shopprice*data[i].pcount+"</td>" +
                        "<td><a class='delete' pid='"+data[i].partshop_carts.pid +"' onclick='deletepart(this)'> 删除</a></td></tr>");
                }
                document.getElementById("totalprice").innerHTML="￥"+total_price+"元"
                document.getElementById("score").innerHTML=" "+total_price+" "
                /*]]>*/

            }

        });

    }
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
                    /*<![CDATA[*/
                    for (var i = 0; i < data.length; i++) {

                        $("#menus").append("<li><a href='secondmenucid?cid="+data[i].cid+"'>"+data[i].cname+"</a></li>")
                        /*]]>*/

                    }
                }

            });

        }
    );
</script>
</body></html>