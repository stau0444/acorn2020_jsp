<%@page import="test.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%  
	int num=Integer.parseInt(request.getParameter("num"));
	MemberDao dao=MemberDao.getInstance();	
 	dao.delete(num);
 	//리다일렉트 이동시키기 위해 context path를 먼저 읽어온다.
 	String cPath=request.getContextPath();
 	//회원 목록보기 요청을 하도록 강요 하는 응답을 한다
 	response.sendRedirect("list.jsp");
 	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	
</body>
</html>