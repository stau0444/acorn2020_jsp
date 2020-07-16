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
	request.setCharacterEncoding("utf-8");
	int num=Integer.parseInt(request.getParameter("num"));
	String name=request.getParameter("name");
	String addr=request.getParameter("addr");
	TodoDto dto= new TodoDto(num,name,addr);
	TotoDao dao=TotoDao.getInstance();
	dao.update(name, num);

response.sendRedirect("list.jsp");
	
%>
<%=num%>
<a href="todo.jsp">수정됨 돌아가기</a>
<body>

</body>
</html>