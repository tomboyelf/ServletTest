<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="jp.co.aforce.beans.Tweet" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ツイート一覧</title>
<link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>


	<div class="container">
		<h1>ツイート一覧</h1>
		<%-- 新規投稿 --%>
		<p>
			<a href="new_tweet.jsp">新規投稿</a>
		</p>
		

		<%-- ツイート一覧の表示 --%>
		<ul class="tweet-list">


					
<% 
	List<Tweet> tweets=(List<Tweet>) request.getAttribute("tweets");
    if (tweets != null) {
        for (Tweet t : tweets) {
%>        		
        		
			<li>
				<div class="tweet-content">
					<p><%= t.getContent() %></p>
					<p class="tweet-info">投稿者: <%= t.getAuthor() %> - 投稿日時: <%= t.getPostedAt() %></p><br>
				<p>（投稿に成功）</p>
				</div>
				
				<form action="delete_tweet" method="post">
					<input type="hidden" name="delete_button" value="<%=t.getId() %>">
					<input type="submit" value="削除">
				</form>
			</li>
        		
<%
        }
    }
%>
					
            
		</ul>
	</div>
</body>
</html>
