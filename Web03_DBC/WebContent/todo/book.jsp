<%@page import="test.dao.BoardDao"%>
<%@page import="test.dto.BookDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%BookDto dto=BoardDao.getInstance().getData();%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		
			<p><%=dto.getBnum()%></p>
			<p><%=dto.getBcompany()%></p>
			<p><%=dto.getBdate()%></p>
			<p><%=dto.getBimg()%></p>
			<p><%=dto.getBname()%></p>
			<p><%=dto.getBsort()%></p>
			<p><%=dto.getBstory()%></p>
</body>
</html>