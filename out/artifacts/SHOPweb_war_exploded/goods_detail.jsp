<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
	<title>商品详情</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--b+s+f-->
	<link type="text/css" rel="stylesheet" href="css/bootstrap.css">
	<link type="text/css" rel="stylesheet" href="css/flexslider.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.flexslider.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="layer/layer.js"></script>
	<script type="text/javascript" src="js/cart.js"></script>
	<script>
		$(function() {
		  $('.flexslider').flexslider({
			animation: "slide",
			controlNav: "thumbnails"
		  });
		});
	</script>
</head>
<body>
	<!--header-->
    <jsp:include page="/header.jsp"></jsp:include>
	<!--//header-->

	<!--//single-page-->
	<br>
	<div class="single">
		<div class="container">
			<div class="single-grids">				
				<div class="col-md-4 single-grid">		
					<div class="flexslider">
						
						<ul class="slides">
							<li data-thumb="${g.cover}">
								<div class="thumb-image"> <img src="${g.cover}" data-imagezoom="true" class="img-responsive"> </div>
							</li>
						</ul>
					</div>
				</div>	
				<div class="col-md-4 single-grid simpleCart_shelfItem">		
					<h3 style="font-weight: bold;color: #5e5e5e">${g.name}</h3>
					<br>
					<div class="tag">
						<p><a style="color: darkseagreen" href="goods_list?typeid=${g.type.id}">${g.type.name}</a></p>
					</div>
					<br>
					<p style="background-color: lightyellow;padding: 10px;color: #5e5e5e">${g.intro}</p>
					<br>
					<div class="galry">
						<div class="prices">
							<h5 style="font-weight: bold;font-size: 20px" class="item_price">¥ ${g.price}</h5>
						</div>
						<div class="clearfix"></div>
					</div>
					<br>
					<div class="btn_form" style="background-color: #ac2925;width: 100px;height: 20px;text-align: center">
						<a style="text-decoration: none;color: white;font-weight: bold" href="javascript:;" class="add-cart item_add" onclick="buy(${g.id})">加入购物车</a>
					</div>
					<br>
				</div>

				<div class="clearfix"> </div>
				<br>
				<br>
				<br>
				<br>
				<br>
			</div>
		</div>
	</div>
	
	<!--related-products--><!-- 
	<div class="related-products">
		<div class="container">
			<h3>猜你喜欢</h3>
			<div class="product-model-sec single-product-grids">
				<div class="product-grid single-product">
					<a href="single.html">
					<div class="more-product"><span> </span></div>						
					<div class="product-img b-link-stripe b-animate-go  thickbox">
						<img src="images/m1.png" class="img-responsive" alt="">
						<div class="b-wrapper">
						<h4 class="b-animate b-from-left  b-delay03">							
						<button>View</button>
						</h4>
						</div>
					</div>
					</a>					
					<div class="product-info simpleCart_shelfItem">
						<div class="product-info-cust prt_name">
							<h4>Product #1</h4>								
							<span class="item_price">$2000</span>
							<div class="ofr">
							  <p class="pric1"><del>$2300</del></p>
							  <p class="disc">[15% Off]</p>
							</div>
							<div class="clearfix"> </div>
						</div>												
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
 -->	<!--related-products-->	
	
	




	<!--footer-->
    <jsp:include page="/footer.jsp"></jsp:include>
	<!--//footer-->


</body>
</html>