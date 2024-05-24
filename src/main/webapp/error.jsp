<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="jp.co.aforce.beans.Tweet" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>エラーページ</title>
<link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>


	<div class="container">
		<h1>ツイート一覧</h1>
		<%-- 新規投稿 --%>
		<ul class="tweet-list">	
			<li>
				<div class="tweet-content">
					<p>投稿失敗</p>
					<p>お名前は10文字以内で入力してください</p>
				</div>
			</li>     
		</ul>
		<p>
			<a href="new_tweet.jsp">新規投稿ページへ戻る</a>
		</p>
		

		<%-- ツイート一覧の表示 --%>
	</div>
</body>
</html>
