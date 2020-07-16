<%@page import="test.users.dto.UsersDto"%>
<%@page import="test.users.dao.UsersDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id=(String)session.getAttribute("id");
	String pwd=request.getParameter("pwd");
	String newPwd=request.getParameter("newPwd1");
	UsersDto dto= new UsersDto();
	dto.setId(id);
	dto.setPwd(pwd);
	dto.setNewPwd(newPwd);
	boolean isValid=UsersDao.getInstance().updatePwd(dto);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
		<%if(isValid==true){%>
		alert("비밀번호가 변경 되었습니다")
		location.href="${pageContext.request.contextPath}/index.jsp";
		<%}else{%>
		alert("입력한 비밀번호가 일치하지 않습니다")
		location.href="${pageContext.request.contextPath}/users/private/update_form.jsp";
		<%}%>
	</script>
</body>
</html>