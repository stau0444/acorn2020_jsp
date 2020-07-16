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
	String fortuneToday=(String)request.getAttribute("fortuneToday");
%>
	<p>	오늘의운세: <strong><%=fortuneToday%></strong></p>
</body>
</html>