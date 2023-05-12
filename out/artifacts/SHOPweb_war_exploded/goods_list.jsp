
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <title>商品列表</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <!--b+s-->
    <link type="text/css" rel="stylesheet" href="css/bootstrap.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/simpleCart.min.js"></script>
    <script type="text/javascript" src="layer/layer.js"></script>
    <script type="text/javascript" src="js/cart.js"></script>
</head>
<body>
<!--header-->
<jsp:include page="header.jsp">
    <jsp:param name="flag" value="2"></jsp:param>
</jsp:include>
<!--//header-->


<!--products-->
<div class="products">
    <div class="container">
        <h2 style="color: darkolivegreen;font-weight: bold;margin-left: 30px"><c:choose><c:when test="${empty t}">全部系列</c:when><c:otherwise>${t.name}</c:otherwise> </c:choose></h2>
        <br>
        <div class="col-md-12 product-model-sec">

            <c:forEach items="${p.list}" var="g">
                <div class="product-grid">
                    <div class="col-sm-6 col-md-4 col-lg-3 " style="height: 240px;width: 240px">
                        <a href="/goods_detail?id=${g.id}">
                            <div class="more-product"><span> </span></div>
                            <div class="product-img b-link-stripe b-animate-go  thickbox">
                                <img src="${g.cover}" class="img-responsive" alt="${g.name}" width="240" height="240">
                            </div>
                        </a>
                    </div>
                    <div class="b-wrapper">
                        <a href="/goods_detail?id=${g.id}">
                            <h4 class="b-animate b-from-left  b-delay03">
                                <button style="background-color: palegoldenrod;border: none;font-weight: bold;color: darkgoldenrod;width: 850px;height: 30px" href="/goods_detail?id=${g.id}">查看详情</button>
                            </h4>
                        </a>
                    </div>
                    <br>
                    <div class="product-info simpleCart_shelfItem">
                        <div class="product-info-cust prt_name">
                            <h4 style="color: black;padding-left: 623px;font-weight: bold">${g.name}</h4>
                            <br>
                            <span style="font-size: 20px;color: palevioletred;padding-left: 385px;font-weight: bold" class="item_price">¥ ${g.price}</span>
                        </div>
                        <br>
                        <div style="padding-left: 620px">
                            <input style="width: 100px;height: 30px;border: none;color: white;background-color: Tan;font-weight: bold;" type="button" class="item_add items" value="加入购物车" onclick="buy(${g.id})">
                            <div class="clearfix"> </div>
                        </div>

                    </div>
                </div>
            </c:forEach>

        </div>

        <jsp:include page="page.jsp">
            <jsp:param name="url" value="/goods_list"></jsp:param>
            <jsp:param name="param" value="&typeid=${id}"></jsp:param>
        </jsp:include>
        </div>
    </div>
</div>
<!--//products-->

<!--footer-->
<jsp:include page="footer.jsp"></jsp:include>
<!--//footer-->


</body>
</html>
