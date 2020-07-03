<%@page import="test.dto.TodoDto"%>
<%@page import="test.dao.TotoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<%
	int num=Integer.parseInt(request.getParameter("num"));
	session.setAttribute("num", num);
%>
<body>
		
		<%=num %>
		<form action="updateAction.jsp" method="get">
			<label for="sendUpdate">수정 </label>
			<input type="text" name="sendUpdate" id="sendUpdate"/>	
			<button type="submit">수정</button>
		</form>
	
</body>
</html>