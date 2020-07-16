<%@page import="test.users.dto.UsersDto"%>
<%@page import="test.users.dao.UsersDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id =request.getParameter("id"); 
	String pwd=request.getParameter("pwd");
	String email=request.getParameter("email");
	
	UsersDto dto=new UsersDto();
	dto.setId(id);
	dto.setPwd(pwd);
	dto.setEmail(email);
	
	UsersDao dao=UsersDao.getInstance();
	Boolean isSuccess=dao.insert(dto);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%if(isSuccess){%>
	<p><strong><%=id %> 님 가입 되었습니다  <a href="login.jsp">로그인하러가기</a></strong></p>
<%}else{%>
	<p>가입에 실패 했습니다 <a href="signup_form.jsp">다시 가입</a></p>
<%} %>
	
</body>
</html>