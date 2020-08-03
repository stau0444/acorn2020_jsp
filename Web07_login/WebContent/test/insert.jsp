<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	img{
		width:500px;
		height:300px;
	}
</style>
</head>
<body>
	<%
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		System.out.println(content);
		System.out.println(title);
	%>
</body>
<div id="content"><%=content %></div>
</html>