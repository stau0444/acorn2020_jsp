<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//post 방식의 요청은 인코딩을 세팅해줘야하고 get방식은 알아서 된다
	//요청이 들어올때 필터를 세팅해서 인코딩을 지정해준다.
	//----요청
	//request.setCharacterEncoding("utf-8");
	String msg=request.getParameter("msg");
	System.out.println("msg:"+msg);
%>

	<!-- 응답 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>요청 처리됨</h1>
	<p>전송된 문자열: <strong><%=msg%></strong></p>
</body>
</html>