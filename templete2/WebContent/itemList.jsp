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
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Paytone+One"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/custom.css">
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keyword" content="" />
<title>itemList画面</title>

<style type="text/css">
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
	margin-left: auto;
	margin-right: auto;
	height: 500px;
	text-align: center;
}

#footer {
	width: 100%;
	height: 80px;
	background-color: black;
	clear: both;
}

#text-right {
	display: inline-block;
	text-align: right;
}
</style>
</head>
<body>
	<header>
	<h1 class="display-3">EC SITE</h1>
	</header>
	
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark"> <a
		class="navbar-brand" href="#">商品一覧</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#切り替え表示されるコンテンツ名" aria-controls="切り替え表示されるコンテンツ名"
		aria-expanded="false" aria-label="ナビゲーション切替">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="切り替え表示されるコンテンツ名">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link"
				href="AdminAction">管理者</a></li>
		</ul>
	</div>
	</nav>
	
	<div id="main">
		<div>
			<table class="table table-hover table-bordered">

				<tbody>

					<tr>
						<th></th>
						<th>商品名</th>
						<th>値段</th>
						<th>在庫</th>
						<th>登録日時</th>
					</tr>

					<s:iterator value="#session.itemListDTOList">
						<tr>
							<td>
								<div class="checkbox">
									<label><input type="checkbox" value=""></label>
								</div>
							</td>
							<td><s:property value="itemName" /></td>
							<td><s:property value="itemPrice" /></td>
							<td><s:property value="stock" /></td>
							<td><s:property value="insert_date" /></td>
						</tr>
					</s:iterator>
			</table>
			<s:form action="ItemListDeleteConfirmAction">
				<s:submit value="削除" method="execute" />
			</s:form>

		</div>
	</div>
	<footer class="py-4 bg-dark text-light"> </footer>
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.bundle.min.js"></script>
</body>
</html>