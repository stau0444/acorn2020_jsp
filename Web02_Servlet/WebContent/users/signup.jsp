<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 	//전송되는 문자열에 한글이 있다면 깨지지 않도록
 	request.setCharacterEncoding("utf-8");

	//input type="text name="id" 에 입력한 문자열 읽어오기
	String id=request.getParameter("id");
	//input type="text name="pwd" 에 입력한 문자열 읽어오기
	String pwd=request.getParameter("pwd");
	//input type="radio name="gender" 에 입력한 문자열 읽어오기
	String gender=request.getParameter("gender");
	//input type="select name="job" 에 입력한 문자열 읽어오기
	String job=request.getParameter("job");
	//input type="checkbox name="like" 에 입력한 문자열 목록 읽어오기
	String [] like=request.getParameterValues("like");
	//input type="textarea name="id" 에 입력한 문자열 읽어오기
	String  comment=request.getParameter("comment");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/signup.jsp</title>
</head>
<body>
	<p>아이디:<%=id%></p>
	<p>비밀번호:<%=pwd%></p>
	<p>성별:<%=gender%></p>
	<p>직업:<%=job %></p>
	<p>좋아하는것</p>
	
	<ul>
		<%for(String tmp:like){ %>
			<li><%=tmp%></li>
		<%}%>
	</ul>
	<p>하고싶은말:<%=comment%></p>
	

</body>
</html>