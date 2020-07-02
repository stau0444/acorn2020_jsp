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
	String num=request.getParameter("num");
	TotoDao dao=TotoDao.getInstance();
	dao.delete(num);
	response.sendRedirect("todo.jsp");
%>
<body>
	<script>
		alert("삭제했습니다");
	</script>
</body>
</html>