<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="Content-Style-Type" content="text/css">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<link href="https://fonts.googleapis.com/css?family=Paytone+One"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keyword" content="" />
<title>home画面</title>

<style type="text/css">
/* ========TAG LAYOUT======== */
body {
	margin: 0;
	padding: 0;
	line-height: 1.6;
	letter-spacing: 1px;
	font-family: Verdana, Helvetica, sans-serif;
	font-size: 12px;
	color: #333;
	background: #fff;
}

header {
	font-family: 'Paytone One', sans-serif;
}

table {
	text-align: center;
	margin: 0 auto;
}

.container {
	height: 500px;
}

/* ========ecsite LAYOUT======== */
#top {
	width: 780px;
	margin: 30px auto;
	border: 1px solid #333;
}

#header {
	width: 100%;
	height: 80px;
	background-color: black;
}

#main {
	width: 100%;
	height: 500px;
	text-align: center;
}

#footer {
	width: 100%;
	height: 80px;
	background-color: black;
	clear: both;
}
</style>
</head>
<body>
	<header>
	<h1 class="display-3">EC SITE</h1>
	</header>
	<nav class="navbar navbar-dark bg-dark"> <a class="navbar-brand"
		href="#">Home</a> </nav>
	<div class="container text-center">
		<div class="py-4">

			<s:form action="HomeAction">
				<s:submit value="商品購入" />
			</s:form>
				<s:if test="#session.login_user_id != null">
					<p>
						ログアウトする場合は<a href='<s:url action = "LogoutAction" />'>こちら</a>
					</p>
				</s:if>
			<%-- 			<s:if test="session.id != null"> --%>
			<!-- 				<p> -->
			<%-- 					ログアウトする場合は<a href='<s:url action = "LogoutAction" />'>こちら</a> --%>
			<!-- 				</p> -->
			<%-- 			</s:if> --%>
		</div>
	</div>


	<footer class="py-4 bg-dark text-light"> </footer>
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.bundle.min.js"></script>
</body>
</html>