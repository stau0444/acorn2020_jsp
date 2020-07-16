<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />

</head>
<body>
	<div class="container">
		<h1>파일 업로드 폼 입니다.</h1>
		<%-- 
			[파일 업로드 폼 작성법] 
			1.method="post"
			2.enctype="multipart/form-data 속성 추가"
			3.<input type="file" /> 을 이용
		--%>
		<form action="upload.jsp" method="post" enctype="multipart/form-data" >
			<label for="title">제목</label>
			<input type="text" name="title" id="title" /><br />
			<label for="myFile">첨부파일</label>
			<input type="file" name="myFile" id="myFile"/><br />
			<button type="submit"> 업로드</button>
		</form>
	</div>
</body>
</html>