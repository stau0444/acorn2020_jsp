<%@page import="test.dao.MemberDao"%>
<%@page import="test.dto.MemberDto"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/Web03_DBC/css/bootstrap.css" />
</head>
<%
	request.setCharacterEncoding("utf-8");
	String name=request.getParameter("name");
	String addr=request.getParameter("addr");
	
	MemberDto dto=new MemberDto();
	dto.setName(name);
	dto.setAddr(addr);
	MemberDao dao=MemberDao.getInstance();
	dao.insert(dto);
%>
<body>
	<div class="container">
		<h1>알림</h1>
		<p class="alert alert-success">
			<strong><%=dto.getName() %></strong> 회원의 정보가 추가 되었습니다.
			<a href="list.jsp" class="alert-link">확인</a>
		</p>
	</div>
	
</body>
</html>