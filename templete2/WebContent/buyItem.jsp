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
<title>buyItem画面</title>

<style type="text/css">
/* ========TAG LAYOUT======== */
body {
	margin: 0;
	padding: 0;
	line-height: 1.6;
	/*文字間隔*/
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
		class="navbar-brand" href="#">BuyItem</a>
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
	<div class="container text-center">
		<div class="row justify-content-around">
			<s:if test="#session.buyitemDTOList1 != null">
				<div class="col-sm">
					<div class="card" style="max-width: 18rem;">
						<img class="card-img-left" src="img/note.jpg" alt="Card image cap"
							style="height: 10rem;">
						<s:form action="BuyItemAction">
							<table class="table table-hover table-bordered text-nowrap"
								style="max-width: 25rem;">
								<s:iterator value="#session.buyitemDTOList1">
									<tr>
										<td><span>商品名</span></td>
										<td><s:property value="itemName" /></td>
									</tr>
									<tr>
										<td><span>値段</span></td>
										<td><s:property value="itemPrice" /><span>円</span></td>
									</tr>
									<tr>
										<td><span>購入個数</span></td>
										<td><select name="count">
												<option value="1" selected="selected">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
												<option value="5">5</option>
										</select></td>
									</tr>
									<!-- 								<tr> -->
									<%-- 									<td><span>支払い方法</span></td> --%>
									<!-- 									<td><input type="radio" name="pay" value="1" -->
									<!-- 										checked="checked">現金払い <br> <input type="radio" -->
									<!-- 										name="pay" value="2">クレジットカード</td> -->
									<!-- 								</tr> -->
								</s:iterator>
							</table>
							<input type="hidden" name="buyItemListFlg" value="1">
							<s:submit value="カートに追加" />
						</s:form>
					</div>
					<!-- card -->
				</div>
				<!-- List1 -->
			</s:if>

			<s:if test="#session.buyitemDTOList2 != null">
				<div class="col-sm">
					<div class="card" style="max-width: 18rem;">
						<img class="card-img-left" src="img/pencil.jpg"
							alt="Card image cap" style="height: 10rem;">
						<s:form action="BuyItemAction">
							<table class="table table-hover table-bordered text-nowrap"
								style="max-width: 25rem;">

								<s:iterator value="#session.buyitemDTOList2" status="list">
									<tr>
										<td><span>商品名</span></td>
										<td><s:property value="itemName" /></td>
									</tr>
									<tr>
										<td><span>値段</span></td>
										<td><s:property value="itemPrice" /><span>円</span></td>
									</tr>
									<tr>
										<td><span>購入個数</span></td>
										<td><select name="count">
												<option value="1" selected="selected">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
												<option value="5">5</option>
										</select></td>
									</tr>
									<tr>
										<%-- 									<td><span>支払い方法</span></td> --%>
										<!-- 									<td><input type="radio" name="pay" value="1" -->
										<!-- 										checked="checked">現金払い <br> <input type="radio" -->
										<!-- 										name="pay" value="2">クレジットカード</td> -->
										<!-- 								</tr> -->
								</s:iterator>
							</table>
							<input type="hidden" name="buyItemListFlg" value="2">
							<s:submit value="カートに追加" />
						</s:form>
					</div>
				</div>
				<!-- List2 -->
			</s:if>

			<s:if test="#session.buyitemDTOList3 != null">
				<div class="col-sm">
					<div class="card" style="max-width: 18rem;">
						<img class="card-img-left" src="img/eraser.jpg"
							alt="Card image cap" style="height: 10rem;">
						<s:form action="BuyItemAction">
							<table class="table table-hover table-bordered text-nowrap"
								style="max-width: 25rem;">

								<s:iterator value="#session.buyitemDTOList3" status="list">
									<tr>
										<td><span>商品名</span></td>
										<td><s:property value="itemName" /></td>
									</tr>
									<tr>
										<td><span>値段</span></td>
										<td><s:property value="itemPrice" /><span>円</span></td>
									</tr>
									<tr>
										<td><span>購入個数</span></td>
										<td><select name="count">
												<option value="1" selected="selected">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
												<option value="5">5</option>
										</select></td>
									</tr>
									<!-- 									<tr> -->
									<%-- 										<td><span>支払い方法</span></td> --%>
									<!-- 										<td><input type="radio" name="pay" value="1" -->
									<!-- 											checked="checked">現金払い <br> <input type="radio" -->
									<!-- 											name="pay" value="2">クレジットカード</td> -->
									<!-- 									</tr> -->
								</s:iterator>
							</table>
							<input type="hidden" name="buyItemListFlg" value="3">
							<s:submit value="カートに追加" />
						</s:form>
					</div>
				</div>
				<!-- List3 -->
			</s:if>
		</div>
		<!-- justify-content-around -->
	</div>
	<!-- container -->
	<div>
		<p>
			マイページは<a href='<s:url action = "MyPageAction" />'>こちら</a>
		</p>
	</div>


	<footer class="py-4 bg-dark text-light"> </footer>
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.bundle.min.js"></script>

</body>
</html>