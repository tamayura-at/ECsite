<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html >
<html>
<head>
<meta  charset="UTF-8">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<title>削除確認画面</title>
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
	#button {
	margin: 10px;}
</style>
<script type="text/javascript">
	function submitAction(url) {
		$('form').attr('action',url);
		$('form').submit();
	}
</script>
</head>
<body>
	<div id="header">
		<div id="pr">
		</div>
	</div>
	<div id="main">
		<div id="top">
			<p>削除確認</p>
		</div>
		<div>
			<h3>すべてのユーザーを削除します。よろしいですか？</h3>
			<s:form>
				<input id="button" type="button" value="OK" onclick="submitAction('UserListDeleteCompleteAction')"/>
				<input id="button" type="button" value="キャンセル" onclick="submitAction('UserListAction')"/>
			</s:form>
		</div>
	</div>
	<div id="footer">
		<div id="pr">
		</div>
	</div>

</body>
</html>