<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
<% String fortune []= {"좋음","나쁨","괜춘","개나쁨","개좋음"};
   int ranNum=new Random().nextInt(fortune.length);
%>
<p>오늘의 운세는:<%=fortune[ranNum]%></p>	
</body>
</html>