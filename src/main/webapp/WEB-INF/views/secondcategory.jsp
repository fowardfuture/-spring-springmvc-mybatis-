<%--
  Created by IntelliJ IDEA.
  User: xiao
  Date: 2018/8/3
  Time: 21:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0048)http://localhost:8080/mango/product/list/1.jhtml -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>zz网上商城</title>
    <link href="./css/common.css" rel="stylesheet" type="text/css"/>
    <link href="./css/product.css" rel="stylesheet" type="text/css"/>

</head>
<body>
<div class="container header">
    <div class="span5">
        <div class="logo">
            <a href="http://localhost:8080/mango/">
                <img src="./image/r___________renleipic_01/logo.gif" alt="传智播客">
            </a>
        </div>
    </div>
    <div class="span9">
        <div class="headerAd">
            <img src="./image/header.jpg" width="320" height="50" alt="正品保障" title="正品保障">
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
                    <a href="./index.htm">[退出]</a>|
                </li>
                <li>
                    <a >会员中心</a>
                    |
                </li>
                <li>
                    <a >购物指南</a>
                    |
                </li>
                <li>
                    <a >关于我们</a>

                </li>
            </ul>
        </div>
        <div class="cart">
            <a href="./购物车.htm">购物车</a>
        </div>
        <div class="phone">
            客服热线:
            <strong>17815910510</strong>
        </div>
    </div>
    <div class="span24">
        <ul class="mainNav" id="menus03">
            <li>
                <a href="${pageContext.request.contextPath}/index">首页</a>
                |
            </li>

        </ul>
    </div>

</div>
<div class="container productList">
    <div class="span6">
        <div class="hotProductCategory" id="secondmenu">

        </div>
    </div>
    <div class="span18 last">

        <form id="productForm" action="./image/蔬菜 - Powered By Mango Team.htm" method="get">
            <input type="hidden" id="brandId" name="brandId" value="">
            <input type="hidden" id="promotionId" name="promotionId" value="">
            <input type="hidden" id="orderType" name="orderType" value="">
            <input type="hidden" id="pageNumber" name="pageNumber" value="1">
            <input type="hidden" id="pageSize" name="pageSize" value="20">

            <div  class="result table clearfix">
                <ul id="result">


                </ul>
            </div>
            <div class="pagination">
                <span class="firstPage" onclick="findfirstpage()">&nbsp;</span>
                <span class="previousPage" onclick="findprepagenum()">&nbsp;</span>
            <div class="pagination" id="page">

                <%--<span class="currentPage">1</span>--%>
                <%--<a href="javascript: $.pageSkip(2);" onclick="page()">2</a>--%>

            </div>
                <a class="nextPage" onclick="findnextpagenum()" >&nbsp;</a>

                <a class="lastPage" onclick="findlastpagenum()">&nbsp;</a>
            </div>
        </form>
    </div>
</div>
<div class="container footer">
    <div class="span24">
        <div class="footerAd">
            <img src="./image/footer.jpg" width="950" height="52" alt="我们的优势" title="我们的优势">
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
                <a >诚聘英才</a>
                |
            </li>
            <li>
                <a >法律声明</a>
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
                <a >官网</a>
                |
            </li>
            <li>
                <a >论坛</a>

            </li>
        </ul>
    </div>
    <div class="span24">
        <div class="copyright">Copyright©2005-2015 网上商城 版权所有</div>
    </div>
</div>


<script src="${pageContext.request.contextPath}js/jquery-1.11.0.min.js"></script>
<script type="text/javascript">
    //设置全局当前页数
    var pageindex=1;
    //设置全局总页数
    var totalpagenum=0;
    //一级目录索引
    var cid=${second_menu.cid};
    //二级目录索引
    var csid=null;
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
    //加载一级目录下的商品图片名称以及价格
    $(document).ready(function () {


                $.ajax({

                    type: "get",

                    url: "getproduct_id",

                    dataType: "json",

                    data: {"cid":cid ,"csid":csid,"pageindex":pageindex},

                    error: function (request) {

                        alert("发送请求失败！");

                    },
                    success: function(data){
                        /*<![CDATA[*/console.log(data);
                        for (var i = 0; i < data.length; i++) {

                            $("#result").append("<li><a href='findby_productid?pid="+data[i].pid+"'><img src='"+data[i].image+"'width='170' height='170'  style='display: inline-block;'> <span style='color:green'>" +
                                data[i].pname+
                                "</span>" +
                                "<span class='price'>" +
                                "商城价： ￥"+data[i].shop_price+
                                "</span></a></li>");
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
                           $("#secondmenu").append("<dd><a csid='"+data[i].csid+"'onclick='findsecodmenudate(this)'>"+ data[i].csname+"</a></dd></dl>");
                           $("#secondmenu").append("<dl><dt><a >"+ data[i+1].cname+"</a></dt>");
                       }
                       else
                           {
                               $("#secondmenu").append("<dd><a csid='"+data[i].csid+"' onclick='findsecodmenudate(this)'>"+ data[i].csname+"</a></dd>");
                           }

                    }

                    $("#secondmenu").append("<dd><a csid='"+data[i].csid+"' onclick='findsecodmenudate(this)'>"+ data[i].csname+"</a></dd></dl>");

                    /*]]>*/

                }

            });

        }
    );
    //加载分页按钮
    $(document).ready(function () {


            $.ajax({

                type: "get",

                url: "get_totalpages",

                dataType: "json",

                data: {"cid":cid ,"csid": csid },

                error: function (request) {

                    alert("发送请求失败！");

                },
                success: function(data){
                    /*<![CDATA[*/console.log(data);
                    for (var i = 1; i <= data; i++) {

                      $("#page").append("<span class='currentPage' onclick='findpagedate(this)' pageindex='"+i+"'>"+i+"</span>");
                        /*]]>*/
                    }
                    totalpagenum=data;
                }

            });

        }
    );
    //点击页数加载相应的页数商品信息以及图片
    function findpagedate(e) {
        pageindex=$(e).attr("pageindex");
        document.getElementById("result").innerHTML="";

        $.ajax({

            type: "get",

            url: "getproduct_id",

            dataType: "json",

            data: {"cid":cid,"csid":csid,"pageindex":pageindex },

            error: function (request) {

                alert("发送请求失败！");

            },
            success: function(data){
                /*<![CDATA[*/console.log(data);
                for (var i = 0; i < data.length; i++) {

                    $("#result").append("<li><a href='findby_productid?pid="+data[i].pid+"'><img src='"+data[i].image+"'width='170' height='170'  style='display: inline-block;'> <span style='color:green'>" +
                        data[i].pname+
                        "</span>" +
                        "<span class='price'>" +
                        "商城价： ￥"+data[i].shop_price+
                        "</span></a></li>");
                    /*]]>*/
                }
            }

        });

    }
    //点击二级目录获取相应的商品数据以及图片
    function findsecodmenudate(e) {
        pageindex=1;
        csid=$(e).attr("csid");
        cid=null;
        document.getElementById("result").innerHTML="";

        $.ajax({

            type: "get",

            url: "getproduct_id",

            dataType: "json",

            data: {"cid":cid,"csid":csid,"pageindex":pageindex },

            error: function (request) {

                alert("发送请求失败！");

            },
            success: function(data){
                /*<![CDATA[*/console.log(data);
                for (var i = 0; i < data.length; i++) {

                    $("#result").append("<li><a href='findby_productid?pid=" + data[i].pid + "'><img src='" + data[i].image + "'width='170' height='170'  style='display: inline-block;'> <span style='color:green'>" +
                        data[i].pname +
                        "</span>" +
                        "<span class='price'>" +
                        "商城价： ￥" + data[i].shop_price +
                        "</span></a></li>");
                    /*]]>*/
                }
                    document.getElementById("page").innerHTML="";
                    $.ajax({

                        type: "get",

                        url: "get_totalpages",

                        dataType: "json",

                        data: {"cid":cid ,"csid": csid },

                        error: function (request) {

                            alert("发送请求失败！");

                        },
                        success: function(date){
                            /*<![CDATA[*/console.log(date);
                            for (var i = 1; i <= date; i++) {

                                $("#page").append("<span class='currentPage' onclick='findpagedate(this)' pageindex='"+i+"'>"+i+"</span>");
                                /*]]>*/
                            }
                            totalpagenum=date;
                        }

                    });

            }

        });

    }
    //跳转到第一页
    function findfirstpage() {
        pageindex=1;
        $.ajax({

            type: "get",

            url: "getproduct_id",

            dataType: "json",

            data: {"cid":cid,"csid":csid,"pageindex":pageindex },

            error: function (request) {

                alert("发送请求失败！");

            },
            success: function(data){
                /*<![CDATA[*/console.log(data);
                document.getElementById("result").innerHTML="";
                for (var i = 0; i < data.length; i++) {

                    $("#result").append("<li><a href='findby_productid?pid=" + data[i].pid + "'><img src='" + data[i].image + "'width='170' height='170'  style='display: inline-block;'> <span style='color:green'>" +
                        data[i].pname +
                        "</span>" +
                        "<span class='price'>" +
                        "商城价： ￥" + data[i].shop_price +
                        "</span></a></li>");
                    /*]]>*/
                }
                document.getElementById("page").innerHTML="";
                $.ajax({

                    type: "get",

                    url: "get_totalpages",

                    dataType: "json",

                    data: {"cid":cid ,"csid": csid },

                    error: function (request) {

                        alert("发送请求失败！");

                    },
                    success: function(date){
                        /*<![CDATA[*/console.log(date);
                        for (var i = 1; i <= date; i++) {

                            $("#page").append("<span class='currentPage' onclick='findpagedate(this)' pageindex='"+i+"'>"+i+"</span>");
                            /*]]>*/
                        }
                        totalpagenum=date;
                    }

                });

            }

        });
        
    }
    //跳转到最后一页
    function findlastpagenum() {
        pageindex=totalpagenum;
        $.ajax({

            type: "get",

            url: "getproduct_id",

            dataType: "json",

            data: {"cid":cid,"csid":csid,"pageindex":pageindex },

            error: function (request) {

                alert("发送请求失败！");

            },
            success: function(data){
                /*<![CDATA[*/console.log(data);
                document.getElementById("result").innerHTML="";
                for (var i = 0; i < data.length; i++) {

                    $("#result").append("<li><a href='findby_productid?pid=" + data[i].pid + "'><img src='" + data[i].image + "'width='170' height='170'  style='display: inline-block;'> <span style='color:green'>" +
                        data[i].pname +
                        "</span>" +
                        "<span class='price'>" +
                        "商城价： ￥" + data[i].shop_price +
                        "</span></a></li>");
                    /*]]>*/
                }
                document.getElementById("page").innerHTML="";
                $.ajax({

                    type: "get",

                    url: "get_totalpages",

                    dataType: "json",

                    data: {"cid":cid ,"csid": csid },

                    error: function (request) {

                        alert("发送请求失败！");

                    },
                    success: function(date){
                        /*<![CDATA[*/console.log(date);
                        for (var i = 1; i <= date; i++) {

                            $("#page").append("<span class='currentPage' onclick='findpagedate(this)' pageindex='"+i+"'>"+i+"</span>");
                            /*]]>*/
                        }
                        totalpagenum=date;
                    }

                });

            }

        });
    }
    //上一页
    function findprepagenum() {
        pageindex=(pageindex-1)>0?(pageindex-1):1;
        $.ajax({

            type: "get",

            url: "getproduct_id",

            dataType: "json",

            data: {"cid":cid,"csid":csid,"pageindex":pageindex },

            error: function (request) {

                alert("发送请求失败！");

            },
            success: function(data){
                /*<![CDATA[*/console.log(data);
                document.getElementById("result").innerHTML="";
                for (var i = 0; i < data.length; i++) {

                    $("#result").append("<li><a href='findby_productid?pid=" + data[i].pid + "'><img src='" + data[i].image + "'width='170' height='170'  style='display: inline-block;'> <span style='color:green'>" +
                        data[i].pname +
                        "</span>" +
                        "<span class='price'>" +
                        "商城价： ￥" + data[i].shop_price +
                        "</span></a></li>");
                    /*]]>*/
                }
                document.getElementById("page").innerHTML="";
                $.ajax({

                    type: "get",

                    url: "get_totalpages",

                    dataType: "json",

                    data: {"cid":cid ,"csid": csid },

                    error: function (request) {

                        alert("发送请求失败！");

                    },
                    success: function(date){
                        /*<![CDATA[*/console.log(date);
                        for (var i = 1; i <= date; i++) {

                            $("#page").append("<span class='currentPage' onclick='findpagedate(this)' pageindex='"+i+"'>"+i+"</span>");
                            /*]]>*/
                        }
                        totalpagenum=date;
                    }

                });

            }

        });
    }
    //下一页
    function  findnextpagenum() {
        pageindex=(pageindex+1)>totalpagenum?totalpagenum:(pageindex+1);
        $.ajax({

            type: "get",

            url: "getproduct_id",

            dataType: "json",

            data: {"cid":cid,"csid":csid,"pageindex":pageindex },

            error: function (request) {

                alert("发送请求失败！");

            },
            success: function(data){
                /*<![CDATA[*/console.log(data);
                document.getElementById("result").innerHTML="";
                for (var i = 0; i < data.length; i++) {

                    $("#result").append("<li><a href='findby_productid?pid=" + data[i].pid + "'><img src='" + data[i].image + "'width='170' height='170'  style='display: inline-block;'> <span style='color:green'>" +
                        data[i].pname +
                        "</span>" +
                        "<span class='price'>" +
                        "商城价： ￥" + data[i].shop_price +
                        "</span></a></li>");
                    /*]]>*/
                }
                document.getElementById("page").innerHTML="";
                $.ajax({

                    type: "get",

                    url: "get_totalpages",

                    dataType: "json",

                    data: {"cid":cid ,"csid": csid },

                    error: function (request) {

                        alert("发送请求失败！");

                    },
                    success: function(date){
                        /*<![CDATA[*/console.log(date);
                        for (var i = 1; i <= date; i++) {

                            $("#page").append("<span class='currentPage' onclick='findpagedate(this)' pageindex='"+i+"'>"+i+"</span>");
                            /*]]>*/
                        }
                        totalpagenum=date;
                    }

                });

            }

        });
    }


</script>
</body></html>
