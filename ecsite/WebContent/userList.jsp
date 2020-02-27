<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html >
<html>
<head>
<meta  charset="UTF-8">
<title>ユーザー一覧画面</title>
<style type="text/css">
	body {
	margin: 0;
	padding: 0;
	line-height: 1.6;
	letter-spacing: 1px;
	font-family: Verdana, Helvetica, sans-serif;
	font-size: 12px;
	color: #333;
	background: #fff
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
	<div id="header">
		<div id="pr">
		</div>
	</div>
	<div id="main">
		<div id="top">
			<p>MyPage</p>
		</div>
		<div>
			<s:if test="userInfoDTOList == null">
				<h3>ユーザー情報はありません。</h3>
			</s:if>
		<%-- 	<s:elseif test="message == null"> --%>
			<s:elseif test="userInfoDTOList != null">
				<h3>ユーザー情報は以下になります。</h3>
				<table border="1">
					<tr>
						<th>id</th>
						<th>ログインID</th>
						<th>パスワード</th>
						<th>ユーザー名</th>
						<th>登録日</th>
						<th>更新日</th>
						<th>詳細</th>
					</tr>
					<s:iterator value="userInfoDTOList">
						<tr>
							<td><s:property value="id"/></td>
							<td><s:property value="loginId"/></td>
							<td><s:property value="loginPass"/></td>
							<td><s:property value="userName"/></td>
							<td><s:property value="insert_date"/></td>
							<td><s:property value="update_date"/></td>
							<td>
							<a href='<s:url action="UserDetailsAction">
								<s:param name="loginId" value="%{loginId}"/>
								</s:url>'>詳細</a>
							</td>
						</tr>
					</s:iterator>
				</table>
				<s:form action="UserListDeleteConfirmAction">
					<s:submit value="削除"/>
				</s:form>
				</s:elseif>
				<div id="text-right">
					<p>管理者TOP画面へ戻る場合は<a href='admin.jsp'>こちら</a></p>
				</div>
		</div>
	</div>
	<div id="footer">
		<div id="pr">
		</div>
	</div>

</body>
</html>