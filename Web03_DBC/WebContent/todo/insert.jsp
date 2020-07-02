<%@page import="test.dto.TodoDto"%>
<%@page import="java.util.List"%>
<%@page import="test.dao.TotoDao"%>
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
		request.setCharacterEncoding("utf-8");
		TotoDao dao=TotoDao.getInstance();
		String todoThings=request.getParameter("things");
		dao.insert(todoThings);
		response.sendRedirect("todo.jsp");
	%>

</body>
</html>