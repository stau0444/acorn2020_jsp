<%@page import="test.users.dao.UsersDao"%>
<%@page import="test.users.dto.UsersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <% 
 	String id=(String)session.getAttribute("id");
 	String email=request.getParameter("email");
 	UsersDto dto=new UsersDto();
 	dto.setId(id);
 	dto.setEmail(email);
 	UsersDao.getInstance().update(dto);
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
		alert("수정 했습니다.");
		location.href="${pageContext.request.contextPath}/users/private/userinfo.jsp"
	</script>
</body>
</html>