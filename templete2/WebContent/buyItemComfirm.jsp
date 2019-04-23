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
<title>byItemConfirm画面</title>

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

<script type="text/javascript">
	function submitAction(url) {
		$('form').attr('action', url);
		$('form').submit();
	}
</script>
</head>
<body>
	<header>
	<h1 class="display-3">EC SITE</h1>
	</header>

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark"> <a
		class="navbar-brand" href="#">BuyItemConfirm</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#切り替え表示されるコンテンツ名" aria-controls="切り替え表示されるコンテンツ名"
		aria-expanded="false" aria-label="ナビゲーション切替">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="切り替え表示されるコンテンツ名">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link"
				href="GoHomeAction">Home</a></li>
		</ul>
	</div>
	</nav>
	<div id="main">
		<div>
			<%-- 			<s:form> --%>
			<!-- 					<tr> -->
			<!-- 						<td>商品名</td> -->
			<%-- 						<td><s:property value="session.buyItem_name" /></td> --%>
			<!-- 					</tr> -->
			<!-- 					<tr> -->
			<!-- 						<td>値段</td> -->
			<%-- 						<td><s:property value="session.buyItem_price" /><span>円</span></td> --%>
			<!-- 					</tr> -->
			<!-- 					<tr> -->
			<!-- 						<td>購入個数</td> -->
			<%-- 						<td><s:property value="session.count" /><span>個</span></td> --%>
			<!-- 					</tr> -->
			<!-- 					<tr> -->
			<!-- 						<td>支払い方法</td> -->
			<%-- 						<td><s:property value="session.pay" /></td> --%>
			<!-- 					</tr> -->
			<!-- 				<tr> -->
			<!-- 					<td><br></td> -->
			<!-- 				</tr> -->
			<!-- 				<tr> -->
			<!-- 					<td><input type="button" value="戻る" -->
			<!-- 						onclick="submitAction('LoginAction')" /></td> -->
			<!-- 					<td><input type="button" value="完了" -->
			<!-- 						onclick="submitAction('BuyItemConfirmAction')" /></td> -->
			<!-- 				</tr> -->
			<%-- 			</s:form> --%>
			<div class="container">
		<s:if test="#session.buyItemListFlg == 1">
			<s:iterator value="#session.buyitemDTOList1">
				<table class="table table-bordered table-striped">
					<thead>
						<tr>
							<th scope="col">商品名</th>
							<th scope="col">値段</th>
							<th scope="col">購入個数</th>
							<!-- 									<th scope="col">支払い方法</th> -->
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><s:property value="itemName" /></td>
							<td><s:property value="total_price = count * itemPrice" /><span>円</span></td>
							<td><s:property value="count" /><span>個</span></td>
							<%-- 									<td><s:property value="session.pay" /></td> --%>
						</tr>
					</tbody>
				</table>
			</s:iterator>
		</s:if>

		<s:elseif test="#session.buyItemListFlg == 2">
			<s:iterator value="#session.buyitemDTOList2">
				<table class="table table-bordered table-striped">
					<thead>
						<tr>
							<th scope="col">商品名</th>
							<th scope="col">値段</th>
							<th scope="col">購入個数</th>
							<!-- 									<th scope="col">支払い方法</th> -->
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><s:property value="itemName" /></td>
							<td><s:property value="total_price = count * itemPrice" /><span>円</span></td>
							<td><s:property value="count" /><span>個</span></td>
							<%-- 									<td><s:property value="session.pay" /></td> --%>
						</tr>
					</tbody>
				</table>
			</s:iterator>
		</s:elseif>
		
		<s:elseif test="#session.buyItemListFlg == 3">
			<s:iterator value="#session.buyitemDTOList3">
				<table class="table table-bordered table-striped">
					<thead>
						<tr>
							<th scope="col">商品名</th>
							<th scope="col">値段</th>
							<th scope="col">購入個数</th>
							<!-- 									<th scope="col">支払い方法</th> -->
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><s:property value="itemName" /></td>
							<td><s:property value="total_price = count * itemPrice" /><span>円</span></td>
							<td><s:property value="count" /><span>個</span></td>
							<%-- 									<td><s:property value="session.pay" /></td> --%>
						</tr>
					</tbody>
				</table>
			</s:iterator>
		</s:elseif>
		<s:form>
			<tr>
				<td><br></td>
			</tr>
			<tr>
				<td><input type="button" value="続けて購入する"
					onclick="submitAction('HomeAction')" /></td>
				<td><input type="button" value="完了"
					onclick="submitAction('BuyItemConfirmAction')" /></td>
			</tr>
		</s:form>
	</div>
	<footer class="py-4 bg-dark text-light"> </footer>
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.bundle.min.js"></script>
</body>
</html>