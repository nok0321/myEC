<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "s" uri = "/struts-tags" %>
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
<title>itemCreate</title>

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

input {
    display: inline-block;
    text-align: left;
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
  display: block;
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
		class="navbar-brand" href="#">商品登録</a>
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
	
	<div class="container text-center">
		<div class="py-4">
			<div class="card card-container">
				<form class="form-signin" action="ItemCreateConfirmAction"
					method="post">
					<span id="reauth-item" class="reauth-item"></span> 
					<input type="itemName" id="inputItemName" class="form-control"
						placeholder="Itemname" name="itemName" required autofocus>
					<input type="itemPrice" id="inputItemPrice" class="form-control"
						placeholder="Itemprice" name="itemPrice" required> 
					<input type="itemStock" id="inputItemStock" class="form-control"
						placeholder="ItemStock" name="itemStock" required>
					<div id="remember" class="checkbox"></div>
					<button class="btn btn-lg btn-primary btn-block btn-signin"
						type="submit">登録</button>
					<div id="text-link"></div>
				</form>
			</div>
		</div>
	</div>
	
	<footer class="py-4 bg-dark text-light"> </footer>
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.bundle.min.js"></script>
</body>
</html>