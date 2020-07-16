<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%
	//세션 초기화
	session.invalidate();
	//Context Path
	String cPath=request.getContextPath();
	//redirect 응답
	response.sendRedirect(cPath+"/index.jsp");
%>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>