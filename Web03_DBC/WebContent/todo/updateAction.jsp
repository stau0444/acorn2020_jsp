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
	int num=(int)session.getAttribute("num");
	String updatedMsg=request.getParameter("sendUpdate");
	TotoDao dao=TotoDao.getInstance();
	dao.update(updatedMsg, num);
	
%>
<%=num%>
<a href="todo.jsp">수정됨 돌아가기</a>
<body>

</body>
</html>