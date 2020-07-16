<%@page import="test.dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
int num=Integer.parseInt(request.getParameter("num"));
BoardDao dao=BoardDao.getInstance();
boolean isSuccess=dao.delete(num);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/Web03_DBC/css/bootstrap.css" />
</head>
<body>
	<div class="container">
		<%if(isSuccess){ %>
			<script> 
				alert("삭제되었습니다");
				location.href="list.jsp"; 
			</script>

		<%} %>
	</div>


</body>
</html>