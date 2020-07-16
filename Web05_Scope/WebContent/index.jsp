<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
</head>

<body>
	<%
		
		Date d=new Date(); 
		String nick=(String)session.getAttribute("nick");
	%>
	<h1>인덱스 페이지입니다.</h1>
	<%if(nick!=null){%>
	<p><%=nick %> 님이 로그인 되었습니다.</p>
	<%}else{ %>
	<p>로그인해주세요</p>	
	<%}%>
	<ul>
		<li><a href="fortune">오늘의운세</a></li>
		<li><a href="member">1번 회원의 정보 보기</a></li>
		<li><a href="test/play.jsp">플레이</a></li>
		<li><a href="test/delete.jsp">로그아웃</a></li>
	</ul>
	<form action="test/save.jsp" method="post">
		<input type="text"  name="nick" placeholder="아이디 입력.."/>
		<button type="submit">로그인</button>
	</form>
	
</body>
</html>