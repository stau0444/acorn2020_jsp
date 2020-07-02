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
	String num=request.getParameter("num");
	String upd=request.getParameter("");
	TotoDao dao=TotoDao.getInstance();
	//dao.update(upd,num);
%>
<body>
		<form action="update.jsp" method="post">
			<label for="sendUpdate">수정 </label>
			<input type="text" name="sendUpdate" id="sendUpdate"/>	
			<button type="submit">수정</button>
		</form>
	
</body>
</html>