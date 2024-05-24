<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.html" %>

<% String name=(String) request.getAttribute("name"); %>
<% String comp=(String) request.getAttribute("comp"); %>
<% String mail=(String) request.getAttribute("mail"); %>
<% String text=(String) request.getAttribute("text"); %>
<% String[] mailmagas=(String[])request.getAttribute("mailmagas"); %>
<% int info=(int) request.getAttribute("info"); %>

<%
if(name.isEmpty()){
	name="未記入";
}
%>
<%
if(comp.isEmpty()){
	comp="未記入";
}
%>
<%
if(mail.isEmpty()){
	mail="未記入";
}
%>
<%
if(text.isEmpty()){
	text="未記入";
}
%>
<% out.println("<p>お名前 : "+name+"</p>"); %><br>
<% out.println("<p>会社名 : "+comp+"</p>"); %><br>
<% out.println("<p>メールアドレス : "+mail+"</p>"); %><br>
<% out.println("<p>お問い合わせ内容 : "+text+"</p>"); %><br>
<% 
if(mailmagas!=null) {
	out.println("<p>希望されるメルマガ一覧</p><br>");
	for(String mailmaga : mailmagas) {
		out.println(mailmaga);
	}
	
} else {
	out.println("");
}
%>
<%
if(info == 0){
    out.println(
            "<p>この度は資料請求いただきありがとうございます。以下のリンクから資料ダウンロードが可能です。</p><br><a href=\"https://www.a-force.biz/\">リンク</a>");
} else {
    out.println("<p>そうか</p><br>");
}
%>

<%@ include file="../footer.html" %>