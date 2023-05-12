<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<title>个人中心</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--b+s-->
	<link type="text/css" rel="stylesheet" href="css/bootstrap.css">
	<style>
		.register-top-grid{text-align:center}
		input{width:500px;height:30px}
		h4{color: #8a6d3b;font-weight: bold}
		#bn{text-align:center;width:100px;height:30px;background-color: Tan;color: white;border:none;font-weight: bold}
		#bn:hover{color: black}
		#bn2{text-align:center;width:100px;height:30px;background-color: Tan;color: white;border:none;font-weight: bold}
		#bn2:hover{color: black}
	</style>
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/simpleCart.min.js"></script>
</head>
<body>

	<jsp:include page="/header.jsp">
		<jsp:param value="4" name="flag"/>
	</jsp:include>
	<c:if test="${empty user}"><%response.sendRedirect("/index");%></c:if>
	<!--account-->
	<
	<div class="account">
		<div class="container">
			<div class="register">
				<c:if test="${!empty msg }">
					<div class="alert alert-success">${msg }</div>
				</c:if>
				<c:if test="${!empty failMsg }">
					<div class="alert alert-danger">${failMsg }</div>
				</c:if>
				
					<div class="register-top-grid">

						<form action="/user_changeaddress" method="post">
						<!-- 收货信息 start -->
						<h4>收货信息</h4>
						<div class="input">
							<span>收货姓名<label></label></span>
							<input type="text" name="name" value="${user.name }" placeholder="请输入收货"> 
						</div>
							<br>
						<div class="input">
							<span>收货电话</span>
							<input type="text" name="phone" value="${user.phone }" placeholder="请输入收货电话"> 
						</div>
							<br>
						<div class="input">
							<span>收货地址</span>
							<input type="text" name="address" value="${user.address }" placeholder="请输入收货地址"> 
						</div>
							<br>
						<div class="register-but text-center">
						   <input id="bn2" type="submit" value="提交">
						</div>	
						<!-- 收货信息 end -->
						</form>
						<hr>
						<form action="/user_changepwd" method="post">
						<h4>安全信息</h4>
						<div class="input">
							<span>原密码</span>
							<input type="text" name="password" placeholder="请输入原密码"> 
						</div>
							<br>
						<div class="input">
							<span>新密码</span>
							<input type="text" name="newPassword" placeholder="请输入新密码"> 
						</div>
							<br>
						<div class="clearfix"> </div>
						<div class="register-but text-center">
						   <input id="bn" type="submit" value="提交">
						</div>
							<br>
						</form>
					</div>
				
				<div class="clearfix"> </div>
			</div>
	    </div>
	</div>
	<!--//account-->

	


	<jsp:include page="/footer.jsp"></jsp:include>

	
</body>
</html>