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
	<h1>인덱스 페이지입니다.</h1>
	 <div class="navbar-light bg-light">
	 	<a href="${pageContext.request.contextPath}" class="navbar-brand">UGO</a>
	 	<ul class="navbar-nav">
	 		<li class="nav-item"><a class="nav-link" href="member/list.jsp">회원 목록 보기</a></li>
	 		<li class="nav-item"><a class="nav-link" href="todo/todo.jsp">할일 목록 보기</a></li>
	 	</ul>
	 </div>
		
	
	</div>
</body>
</html>