<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id =request.getParameter("id");
	String pwd =request.getParameter("pwd");
	//1. 쿠키 객체 생성 new Cookie("key",value);
	Cookie userid= new Cookie("id",id);
	Cookie userpwd= new Cookie("pwd",pwd);
	//2. 쿠키 유지시간(초단위)
	userid.setMaxAge(60);
	userpwd.setMaxAge(60);
	//3.HttpServletResponse 객체에 담는다
	response.addCookie(userid);
	response.addCookie(userpwd);
	//4.응답할때 쿠키가 자동으로 응답되고 클라이언트의 웹브라우저에 저장이 된다.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="cookie_form.jsp">저장된 문자열 확인</a>
</body>
</html>