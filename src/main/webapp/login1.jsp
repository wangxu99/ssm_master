<%@page import="java.security.interfaces.RSAKey"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script
	src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
<title>淘一淘-欢迎登录</title>
</head>
<%--<script>

	$(document).ready(function() {

		
		$(document).keypress(function(e) {
			if (e.which == 13) {
				e.preventDefault();
				
				$(".login-input").click();
				//form.submit();
			}
		});
		input_value();
	})
	
	function input_value() {
		if (UserID != "null") {
			document.getElementById("inputEmail3").value = UserID;
		}
	}
</script>--%>

<script type="text/javascript">
	function reloadcode() {
		var verify = document.getElementById('code');
		verify.setAttribute("src",
				"${pageContext.request.contextPath}/verificationcodeimg?it="
						+ Math.random());
	}
</script>


<body onload="input_value()">

	<div class="login">
		<div class="row">
			<div class="col-md-6">
				<img src="./image/login.png" alt="" width="640" height="400"
					style="margin-left: -40px; margin-top: 30px;">
			</div>
			<div class="col-md-5 form-login">
				<div>
					<!-- <h2 class="login-h2">登录</h2> -->
					<form class="form-horizontal" id="form2"
						action=" "
						method="post">
						<div class="form-group">
							<label for="username" class="col-sm-2 control-label">用户名</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="username"
									name="username" placeholder="用户名">
							</div>
						</div>
						<div class="form-group">
							<label for="password" class="col-sm-2 control-label">密码</label>
							<div class="col-sm-10">
								<input type="password" class="form-control" id="password"
									name="password" placeholder="密码">
							</div>
						</div>
						<div class="form-group">
							<label for="confirmlogo" class="col-sm-2 control-label">验证码</label>
							<img src=" "
								id="code" onclick="reloadcode()" style="cursor: pointer;"
								alt="看不清楚,换一张" width="100px">
							<div class="col-sm-10" style="width: 160px">
								<input type="text" class="form-control" id="confirmlogo"
									name="confirmlogo" placeholder="验证码">
							</div>
						</div>
						<div style="margin-left: 80px; color: red;"></div>

						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<input type="submit" class="btn btn-primary login-input"
									value="登录" name="submit"> <a href=""
									style="margin-left: 10px;">忘记密码?</a>
								<div class="error">${errorMsg}</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>

	</div>
	</div>
</body>
</html>