<%@page import="java.util.List"%>
<%@page import="test.dao.MemoDao"%>
<%@page import="java.util.Date"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%String d=new Date().toString();%>
	<p>현재시간:<%out.println(d);%></p>
	<p>현재시간:<%=d%>9</p>
	<% MemoDao dao=MemoDao.getInstance(); %>

</body>
</html>