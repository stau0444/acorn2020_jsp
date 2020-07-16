<%@page import="test.users.dao.UsersDao"%>
<%@page import="test.users.dto.UsersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id=(String)session.getAttribute("id");
	UsersDto dto=UsersDao.getInstance().userInfo(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
</head>
<body>
	<div class="container">
		<h1>회원정보 수정 폼 입니다</h1>
		<form action="update_action.jsp">
			<div class="form-group">
				<label for="id">아이디</label>
				<input type="text" value="<%=dto.getId() %>" disabled/>
			</div>
			<div class="form-group">
				<label for="email">이메일</label>
				<input type="text" id="email" name="email" value="<%=dto.getEmail()%>"/>
			</div>
			<button type="submit" >수정확인</button>
			<button type="reset">취소</button>
		</form>
	</div>
</body>
</html>