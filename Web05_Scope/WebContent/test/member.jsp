<%@page import="test.member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
 MemberDto dto=(MemberDto)request.getAttribute("dto");
 %>
	<p><strong>번호</strong>:<%=dto.getNum() %></p>
	<p><strong>이름</strong>:<%=dto.getName() %></p>
	<p><strong>주소</strong>: <%=dto.getAddr() %></p>
</body>
</html>