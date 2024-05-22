<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.html" %>
<h1>入力フォーム</h1>
<p>各項目を記入の上、送信ボタンを押してください</p>
<form action="../servlet/test" method="post">
<div class="form-box">
	<label>お名前</label><br>
	<input type="text" name="name" class="text-field">
</div>
<div class="form-box">
	<label>会社名</label><br>
	<input type="text" name="comp" class="text-field">
</div>
<div class="form-box">
	<label>メールアドレス</label><br>
	<input type="text" name="mail" class="text-field">
</div>
<div class="form-box">
	<label>お問い合わせ内容</label><br>
	<textarea name="text" rows="3" wrap="soft" class="text-field" id="sentence"></textarea>
</div>
<div class="form-box">
	<label>希望されるメールマガジン</label>
	<br>
	<input type="checkbox" name="mailmaga" value="総合案内">総合案内
	<input type="checkbox" name="mailmaga" value="セミナー案内">セミナー案内
	<input type="checkbox" name="mailmaga" value="求人採用情報">求人採用情報
	<br>
</div>
<div class="form-box">
	<label>資料請求を希望しますか</label><br>
	<input type="radio" name="info" value="0" checked>希望する
	<input type="radio" name="info" value="1">希望しない
</div>
	

	<br>
	<input type="submit" value="送信" id="button">
</form>

<%@ include file="../footer.html" %>