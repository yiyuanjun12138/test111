<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
	<title>用户注册</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--b+s-->
	<link type="text/css" rel="stylesheet" href="css/bootstrap.css">
	<style>
		.register-top-grid{text-align:center}
		h3{color:DarkGoldenrod;font-weight:900}
		input{width:500px;height:30px}
		#bn{text-align:center;width:100px;height:30px;background-color: Tan;color: white;border:none;font-weight: bold}
		#bn:hover{color: black}
	</style>
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/simpleCart.min.js"></script>
</head>
<body>

	<!--header-->
	<jsp:include page="/header.jsp">
		<jsp:param name="flag" value="10"></jsp:param>
	</jsp:include>
	<!--//header-->


	<!--account-->
	<div class="account">
		<div class="container">
			<div class="register">
				<c:if test="${!empty msg }">
					<div class="alert alert-danger">${msg }</div>
				</c:if>
				<form action="/user_register" method="post">
					<div class="register-top-grid">
						<h3>注册新用户</h3>
						<br>
						<div class="input">
							<span>用户名称<label style="color:red;">*</label></span>
							<input type="text" name="username" placeholder="请输入用户名" required="required">
						</div>
						<br>
						<div class="input">
							<span>您的邮箱<label style="color:red;">*</label></span>
							<input type="text" name="email" placeholder="请输入邮箱" required="required">
						</div>
						<br>
						<div class="input">
							<span>您的密码<label style="color:red;">*</label></span>
							<input type="password" name="password" placeholder="请输入密码" required="required">
						</div>
						<br>
						<div class="input">
							<span>收货姓名<label>·</label></span>
							<input type="text" name="name" placeholder="请输入收货人姓名">
						</div>
						<br>
						<div class="input">
							<span>收货电话<label>·</label></span>
							<input type="text" name="phone" placeholder="请输入收货电话">
						</div>
						<br>
						<div class="input">
							<span>收货地址<label>·</label></span>
							<input type="text" name="address" placeholder="请输入收货地址">
						</div>
						<br>
						<div class="clearfix"> </div>
					</div>
					<div class="register-but text-center" >
					   <input id="bn" type="submit" value="提交">
					   <div class="clearfix"> </div>
					</div>
					<br>
					<br>
				</form>
				<div class="clearfix"> </div>
			</div>
	    </div>
	</div>
	<!--//account-->



	<!--footer-->
	<jsp:include page="/footer.jsp"></jsp:include>
	<!--//footer-->

	
</body>
</html>