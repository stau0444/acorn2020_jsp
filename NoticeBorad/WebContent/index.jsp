<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.css" />
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<nav class="navbar navbar-expand-lg navbar-primary bg-light">
			<a href="#" class="navbar-brand">게시판</a>

			<div class="collapse navbar-collapse id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a href="nav-link" href="#">자료</a>
					</li>
				</ul>
				<form action="" class="form-inline my-2 my-lg-0">
					<input type="search" class="form-control mr-sm-2 placeholder="
						Search" aria-label="Search" />
					<button class="btn btn-outline-success my-2 my-sm-0" type="submit">찾기</button>
				</form>
			</div>
		</nav>
			
			<a class="btn btn-outline-success my-1 my-sm-0" href="addmsg.jsp" target="_parent">글추가</a>
		<table class="table">
			<thead class="table table-success">
				<tr>
					<td>번호</td>
					<td>제목</td>
					<td>날짜</td>
					<td>삭제</td>
					<td>수정</td>
				</tr>
			</thead>
			<tbody>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tbody>
		</table>
	</div>

</body>
</html>