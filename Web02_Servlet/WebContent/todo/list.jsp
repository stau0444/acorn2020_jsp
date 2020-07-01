<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
	
	List<String> list =new ArrayList<>();
	list.add("밥먹기");
	list.add("잠자기");
	list.add("일어나기");
	boolean isContain= list.contains("잠자기");
	%>
	<h2>할일목록</h2>
	<ul>
		<%for(int i=0; i<list.size(); i++){%>
		<li><%=list.get(i) %></li>
		<%};%>	
		<li><%=isContain %></li>
	</ul>
</body>
</html>