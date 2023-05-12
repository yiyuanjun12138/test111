<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<title>用户登录</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<!--b+s-->
	<style>
		.register-top-grid{text-align:center}
		input{width:500px;height:30px}
		#bn{text-align:center;width:100px;height:30px;background-color: Tan;color: white;border:none;font-weight: bold}
		#bn:hover{color: black}
	</style>
	<link type="text/css" rel="stylesheet" href="css/bootstrap.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/simpleCart.min.js"></script>
</head>
<body>
	<!--header-->
	<jsp:include page="header.jsp">
		<jsp:param name="flag" value="9"></jsp:param>
	</jsp:include>
	<!--//header-->

	<!--account-->
	<div class="account">
		<div class="container">
			<div class="register">
				<c:if test="${!empty msg }">
					<div class="alert alert-success">${msg }</div>
				</c:if>
				<c:if test="${!empty failMsg }">
					<div class="alert alert-danger">${failMsg }</div>
				</c:if>

				<form action="/user_login" method="post">
					<div class="register-top-grid">
						<br>
						<br>
						<br>

						<h3 style="color:DarkGoldenrod;font-weight:900">用户登录</h3>
						<br>
						<div class="input">
							<span>用户名或邮箱  <label style="color:red;">*</label></span>
							<input type="text" name="ue" placeholder="请输入用户名或邮箱" required="required">
						</div>
						<br>
						<div class="input">
							<span>请输入密码号  <label style="color:red;">*</label></span>
							<input type="password" name="password" placeholder="请输入密码" required="required">
						</div>
						<br>
						<br>
						<div class="clearfix"> </div>
					</div>
					<div class="register-but text-center">
						<input id="bn" type="submit" value="提交">
						<div class="clearfix"> </div>
					</div>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
				</form>
				<div class="clearfix"> </div>
			</div>
	    </div>
	</div>
	<!--//account-->

	




	<!--footer-->
	<jsp:include page="footer.jsp"></jsp:include>
	<!--//footer-->

	
</body>
</html>