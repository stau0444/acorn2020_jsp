<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	background-color: yellow;
}
</style>
</head>
<body>
	<h3>팝업된 페이지</h3>
	<p>
		Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odit
		soluta sed iure deserunt ea ullam illo repudiandae nihil a et fugi t
		harum totam hic qui possimus alias iste eum tempora!
	</p>
	<form action="popup_save.jsp">
		<label for="popup">1주일동안 열지말기
			<input type="checkbox" name="canPopup" value="no"/>
		</label>
		<button type="submit">닫기</button>
	</form>
</body>
</html>