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
<title>admin画面</title>

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

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark"> <a
		class="navbar-brand" href="#">管理者</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#切り替え表示されるコンテンツ名" aria-controls="切り替え表示されるコンテンツ名"
		aria-expanded="false" aria-label="ナビゲーション切替">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="切り替え表示されるコンテンツ名">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="#"></a></li>
		</ul>
		<form class="form-inline my-2 my-lg-0">
			<li class="nav-item active"><a class="nav-link btn btn-primary"
				href="LogoutAction">ログアウト</a></li>
		</form>
	</div>
	</nav>

	<div class="container text-center">
		<div class="row justify-content-around">
			<div class="col-4">
				<div class="card" style="max-width: 25rem;">
					<h4 class="card-header">商品</h4>
					<div class="card-body">
						<ul class="list-group list-group-flush">
							<li class="list-group-item"><a href="ItemCreateAction"
								class="btn btn-secondary">商品登録</a></li>
							<li class="list-group-item"><a href="ItemListAction"
								class="btn btn-secondary">商品一覧</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-4">
				<div class="card" style="max-width: 25rem;">
					<h4 class="card-header">ユーザー</h4>
					<div class="card-body">
						<ul class="list-group">
							<li class="list-group-item"><a href="UserCreateAction"
								class="btn btn-secondary">ユーザー登録</a></li>
							<li class="list-group-item"><a href="UserListAction"
								class="btn btn-secondary">ユーザー一覧</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- <s:form action="ItemCreateAction">
		<s:submit value="商品登録" />
	</s:form>
	<s:form action="ItemListAction">
		<s:submit value="商品一覧" />
	</s:form>
	<s:form action="UserCreateAction">
		<s:submit value="ユーザー登録" />
	</s:form>
	<s:form action="UserListAction">
		<s:submit value="ユーザー一覧" />
	</s:form> -->

	<footer class="py-4 bg-dark text-light"> </footer>
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.bundle.min.js"></script>
</body>
</html>