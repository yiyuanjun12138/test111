<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--header-->
<div class="header">
    <div class="container" >
        <nav class="navbar navbar-default" role="navigation" style="background-color: DarkKhaki;height: 55px">
            <div class="navbar-header" >
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <h1 class="navbar-brand"><a href="/index"></a></h1>
            </div>
            <!--navbar-header-->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav" style="font-weight:900">
                    <li><a style="color:white" href="/index" <c:if test="${param.flag==1}">class="active"</c:if>>首页</a></li>
                    <li class="dropdown">
                        <a href="#" style="color:white" class="dropdown-toggle <c:if test="${param.flag==2}">active</c:if>" data-toggle="dropdown">商品分类<b class="caret"></b></a>
                        <ul class="dropdown-menu multi-column columns-2" style="background: palegoldenrod">
                            <li >
                                <div class="row">
                                    <div class="col-sm-12" >
                                        <!--<h4 style="color: white">商品分类</h4>-->
                                        <ul class="multi-column-dropdown" style="background-color:lightyellow">

                                            <li style="letter-spacing:5px;list-style-type:none"><a class="list" style="color:grey;text-decoration: none;font-weight:normal" href="/goods_list">青 · all</a></li>

                                            <c:forEach items="${typeList}" var="t">
                                                <li style="letter-spacing:5px;list-style-type:none"><a style="color:grey;text-decoration: none;font-weight:normal" class="list" href="/goods_list?typeid=${t.id}">${t.name}</a></li>
                                            </c:forEach>


                                        </ul>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <li><a style="color:white" href="/goodsrecommend_list?type=2" <c:if test="${param.flag==3 && t==2}">class="active"</c:if>>热销</a></li>
                    <li><a style="color:white" href="/goodsrecommend_list?type=3" <c:if test="${param.flag==3 && t==3}">class="active"</c:if>>新品</a></li>
                    <li><a style="color:white;" href="/goods_cart.jsp" <c:if test="${param.flag==8 }">class="active"</c:if>>购物车</a></li>
                    <li>
                        <form class="navbar-form" action="/goods_search">
                            <input type="text" class="form-control" name="keyword" placeholder="输入搜索心仪的的商品">
                            <button style="font-weight: bold;background-color:Olive;color: white"  type="submit" class="btn btn-default <c:if test="${param.flag==7 }">active</c:if>" aria-label="Left Align">搜索</button>
                        </form>
                    </li>


                    <c:choose><c:when test="${empty user }">
                        <li><a style="color:white" href="/user_register.jsp" <c:if test="${param.flag==10 }">class="active"</c:if>>注册</a></li>
                        <li><a style="color:white" href="/user_login.jsp" <c:if test="${param.flag==9 }">class="active"</c:if>>登录</a></li>
                    </c:when><c:otherwise>
                        <li><a style="color:white" href="/order_list" <c:if test="${param.flag==5 }">class="active"</c:if>>我的订单</a></li>
                        <li><a style="color:white" href="/user_center.jsp" <c:if test="${param.flag==4 }">class="active"</c:if>>个人中心</a></li>

                        <li><a style="color:white" href="/user_logout" >退出</a></li>

                    </c:otherwise>
                    </c:choose>
                    <c:if test="${!empty user && !user.isadmin}">
                        <li><a style="color:white" href="/log.jsp" target="_blank">登录日志</a></li>
                    </c:if>
                    <c:if test="${!empty user && user.isadmin}">
                        <li><a style="color:white" href="/admin/index.jsp" target="_blank">后台管理</a></li>
                    </c:if>

                </ul>
                <!--/.navbar-collapse-->
            </div>
            <!--//navbar-header-->
        </nav>

    </div>
</div>
<!--//header-->