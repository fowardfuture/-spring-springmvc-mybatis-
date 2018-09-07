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
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>订单页面</title>
    <link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/css/cart.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div class="container header">
    <div class="span5">
        <div class="logo">
            <a href="${pageContext.request.contextPath}/网上商城/index.htm">
                <img src="${pageContext.request.contextPath}/image/r___________renleipic_01/logo.gif" alt="传智播客"/>
            </a>
        </div>
    </div>
    <div class="span9">
        <div class="headerAd">
            <img src="${pageContext.request.contextPath}/image/header.jpg" width="320" height="50" alt="正品保障" title="正品保障"/>
        </div>
    </div>
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
                    <a href="${pageContext.request.contextPath}/index.jsp">[退出]</a>|
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
            <a href="${pageContext.request.contextPath}/shopping-carts">购物车</a>
        </div>
        <div class="phone">
            客服热线:
            <strong>96008/53277764</strong>
        </div>
    </div>
    <!-- 菜单栏 -->
    <div class="span24">

        <ul class="mainNav" id="menus">
            <li>
                <a href="${ pageContext.request.contextPath }/index">首页</a>
                |
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/index">首页</a>
                |
            </li>

         </ul>
    </div>

</div>

<div class="container cart">

    <div class="span24">

        <div class="step step1">
            <ul>

                <li  class="current"></li>
                <li  >状态</li>
            </ul>
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
            商品金额: <strong id="effectivePrice"><a id="totalprice">￥0元</a></strong>
        </div>
        <form id="orderForm" action="${pageContext.request.contextPath}/checkorder" method="post">

            <div class="span24">
                <%--<p>--%>
                    <%--收货地址：<input name="addr" type="text" value="" style="width:350px" />--%>
                    <%--<br />--%>
                    <%--收货人&nbsp;&nbsp;&nbsp;：<input name="name" type="text" value="" style="width:150px" />--%>
                    <%--<br />--%>
                    <%--联系方式：<input name="phone" type="text"value="" style="width:150px" />--%>
                    <%--<input name="total" type="hidden"  value=""/>--%>
                <%--</p> --%>
                <hr />
                <%--<p>--%>
                    <%--选择银行：<br/>--%>
                    <%--<input type="radio" name="pd_FrpId" value="ICBC-NET-B2C" checked="checked"/>工商银行--%>
                    <%--<img src="${pageContext.request.contextPath}/bank_img/icbc.bmp" align="middle"/>&nbsp;&nbsp;&nbsp;&nbsp;--%>
                    <%--<input type="radio" name="pd_FrpId" value="BOC-NET-B2C"/>中国银行--%>
                    <%--<img src="${pageContext.request.contextPath}/bank_img/bc.bmp" align="middle"/>&nbsp;&nbsp;&nbsp;&nbsp;--%>
                    <%--<input type="radio" name="pd_FrpId" value="ABC-NET-B2C"/>农业银行--%>
                    <%--<img src="${pageContext.request.contextPath}/bank_img/abc.bmp" align="middle"/>--%>
                    <%--<br/>--%>
                    <%--<input type="radio" name="pd_FrpId" value="BOCO-NET-B2C"/>交通银行--%>
                    <%--<img src="${pageContext.request.contextPath}/bank_img/bcc.bmp" align="middle"/>&nbsp;&nbsp;&nbsp;&nbsp;--%>
                    <%--<input type="radio" name="pd_FrpId" value="PINGANBANK-NET"/>平安银行--%>
                    <%--<img src="${pageContext.request.contextPath}/bank_img/pingan.bmp" align="middle"/>&nbsp;&nbsp;&nbsp;&nbsp;--%>
                    <%--<input type="radio" name="pd_FrpId" value="CCB-NET-B2C"/>建设银行--%>
                    <%--<img src="${pageContext.request.contextPath}/bank_img/ccb.bmp" align="middle"/>--%>
                    <%--<br/>--%>
                    <%--<input type="radio" name="pd_FrpId" value="CEB-NET-B2C"/>光大银行--%>
                    <%--<img src="${pageContext.request.contextPath}/bank_img/guangda.bmp" align="middle"/>&nbsp;&nbsp;&nbsp;&nbsp;--%>
                    <%--<input type="radio" name="pd_FrpId" value="CMBCHINA-NET-B2C"/>招商银行--%>
                    <%--<img src="${pageContext.request.contextPath}/bank_img/cmb.bmp" align="middle"/>--%>
                <%--</p>--%>
                <hr />
                <p style="text-align:right">
                    <a href="javascript:document.getElementById('orderForm').submit();">
                        <img src="${pageContext.request.contextPath}/images/finalbutton.gif" width="204" height="51" border="0" />
                    </a>
                </p>
            </div>
        </form>
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
                    document.getElementById("total").innerHTML=""+total_price+"";
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
                document.getElementById("totalprice").innerHTML="￥"+total_price+"元";
                document.getElementById("total").innerHTML=""+total_price+"";
                document.getElementById("score").innerHTML=" "+total_price+" ";
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
</body>
</html>
