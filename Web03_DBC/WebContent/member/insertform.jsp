<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/Web03_DBC/css/bootstrap.css" />
</head>
<body>
	<div class="container">
		<h1>회원 정보 추가 폼 입니다</h1>
			<form action="insert.jsp">
				<label for="name">이름</label>
				<input type="text" name="name" id="name" /><br />
				<label for="addr">주소</label>
				<input type="text" name="addr" id="addr" /><br />
				<button type="submit">추가</button>
				<button type="reset">취소</button>
			</form>
			
	</div>
</body>
</html>