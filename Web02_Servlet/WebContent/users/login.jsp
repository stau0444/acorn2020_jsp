<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/Web02_Servlet/Bootstrap/css/bootstrap.css" />
</head>
<body>
<% 
	String id=request.getParameter("id");
	String pwd=request.getParameter("pwd");
%>
<div class="container">
	
	<%if(id.equals("gura")&&pwd.equals("1234")){ %>
		<p class="alert alert-success"><%=id %> 님 로그인 되었습니다.</p>
	<%}else{%>
		<p class="alert alert-danger">아이디 혹은 비밀번호가 다릅니다</p>
	<%}%>
</div>

</body>
</html>