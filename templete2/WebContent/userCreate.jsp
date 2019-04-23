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
<link rel="stylesheet" href="css/custom.css">
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keyword" content="" />
<title>UserCreate</title>

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

/* ========ID LAYOUT======== */
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
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark"> <a
		class="navbar-brand" href="#">新規ユーザー登録</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#切り替え表示されるコンテンツ名" aria-controls="切り替え表示されるコンテンツ名"
		aria-expanded="false" aria-label="ナビゲーション切替">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="切り替え表示されるコンテンツ名">
		<ul class="navbar-nav mr-auto">
			<s:if test="admin_flg = 1">
				<li class="nav-item"><a class="nav-link" href="AdminAction">管理者</a></li>
			</s:if>
			<s:else>
				<li class="nav-item"><a class="nav-link" href="GoHomeAction">Home</a></li>
			</s:else>
		</ul>
	</div>
	</nav>
	<div class="container text-center">
		<div class="py-4">
			<div class="card card-container">
				<form class="form-signin" action="UserCreateConfirmAction"
					method="post">
					<span id="reauth-email" class="reauth-email"></span> <input
						type="loginID" id="inputLoginID" class="form-control"
						placeholder="LoginID" name="loginUserId" required autofocus>
					<input type="password" id="inputPassword" class="form-control"
						placeholder="Password" name="loginPassword" required> <input
						type="userName" id="inputUserName" class="form-control"
						placeholder="userName" name="userName" required>
					<div id="remember" class="checkbox"></div>
					<button class="btn btn-lg btn-primary btn-block btn-signin"
						type="submit">登録</button>
					<div id="text-link"></div>
				</form>
			</div>
		</div>
	</div>

<!-- <div id="main"> -->
<!-- 		<div id="top"> -->
<!-- 			<p>UserCreate</p> -->
<!-- 		</div> -->
<!-- 		<div> -->
<%-- 			<s:if test="errorMessage!=''"> --%>
<%-- 				<s:property value="errorMessage" escape="false" /> --%>
<%-- 			</s:if> --%>
<!-- 			<table> -->
<%-- 				<s:form action="UserCreateConfirmAction"> --%>
<!-- 					<tr> -->
<!-- 						<td><label>ログインID:</label></td> -->
<!-- 						<td><input type="text" name="loginUserId" value="" /></td> -->
<!-- 					</tr> -->
<!-- 					<tr> -->
<!-- 						<td><label>ログインPASS:</label></td> -->
<!-- 						<td><input type="text" name="loginPassword" value="" /></td> -->
<!-- 					</tr> -->
<!-- 					<tr> -->
<!-- 						<td><label>ユーザー名:</label></td> -->
<!-- 						<td><input type="text" name="userName" value="" /></td> -->
<!-- 					</tr> -->
<%-- 					<s:submit value="登録" /> --%>
<!-- 					<div> -->
<%-- 					<s:if test="admin_flg != null"> --%>
<%-- 						<span>前画面に戻る場合は</span> --%>
<%-- 						<a href='<s:url action = "AdminAction" />'>こちら</a> --%>
<%-- 					</s:if> --%>
<%-- 					<s:else> --%>
<%-- 						<span>前画面に戻る場合は</span> --%>
<%-- 						<a href='<s:url action = "HomeAction" />'>こちら</a> --%>
<%-- 					</s:else> --%>
<!-- 				</div> -->
<%-- 				</s:form> --%>
				
<!-- 			</table> -->

<!-- 		</div> -->
<!-- 	</div> -->
	<footer class="py-4 bg-dark text-light"> </footer>
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.bundle.min.js"></script>
</body>
</html>