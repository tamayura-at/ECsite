<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html >
<html>
<head>
<meta  charset="UTF-8">
<title>Home画面</title>
<style type="text/css">
	body {
	margin: 0;
	padding: 0;
	line-height: 1.6;
	letter-spacing: 1px;
	font-familiy: Verdana, Helvetica, sans-serif;
	font-size: 15px;
	color: #333;
	background: #fff;}

	#top {
	width: 780px;
	margin: 30px auto;
	border: 1px;
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
	position: absolute;
	clear: both;
	}
	#text-center {
	display: inline-block;
	text-align: center;
	}
	#item {
	position: relative;
	float: left;
	width: 15%;
	margin-left: 300px;
	border: 1px solid #555555;
	padding: 15px;
	}
	#user {
	position: relative;
	float: right;
	margin-right: 300px;
	width: 15%;
	border: 1px solid #555555;
	padding: 15px;
	}
	#titlebox {
	position: absolute;
	top: -20px;
	left: 80px;
	font-size: 100%;
	padding: 0.5em;
	background: #ffffff
	}
</style>
</head>
<body>
	<div id="header">

	<div id="pr">
	</div>

	</div>
	<div id="main">
		<div id="top">
			<p>管理者TOP画面</p>
		</div>
		<div id="item">
			<div id="box">
				<div id="titlebox"><span id="title">商品</span></div>
				<div id="text-center">
					<s:form action="ItemListAction">
						<s:submit value="商品一覧"/>
					</s:form>
					<s:form action="ItemCreateAction">
						<s:submit value="商品追加"/>
					</s:form>
				</div>
			</div>
		</div>
		<div id="user">
			<div id="box">
				<div id="titlebox"><span id="title">ユーザー</span></div>
				<div id="text-center">
					<s:form action="UserListAction">
						<s:submit value="ユーザー一覧"/>
					</s:form>
					<s:form action="UserCreateAction">
						<s:submit value="ユーザー追加"/>
					</s:form>
				</div>
			</div>
		</div>
	</div>
	<div id="text-right">
		<p>ログアウトする場合は<a href='<s:url action="LogoutAction"/>'>こちら</a>
	</div>
	<div id="footer">
		<div id="pr">
		</div>
	</div>

</body>
</html>