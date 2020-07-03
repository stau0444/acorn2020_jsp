<%@page import="test.dao.MemberDao"%>
<%@page import="test.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<%  // 1. form 전송되는 수정할 회원의 정보를 읽어온다.  
		request.setCharacterEncoding("utf-8");
		int num=Integer.parseInt(request.getParameter("num"));
		String name=request.getParameter("name");
		String addr=request.getParameter("addr");
		MemberDto dto= new MemberDto(num,name,addr);
		MemberDao dao=MemberDao.getInstance();
		dao.update(dto);
		
		response.sendRedirect("list.jsp");
	// 2. db에  수정 반영한다.
	
	//3.응답한다.

%>
<body>
	
</body>
</html>