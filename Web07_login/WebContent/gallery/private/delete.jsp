<%@page import="test.gallery.dao.GalleryDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int num=Integer.parseInt(request.getParameter("num"));
	boolean isDelete=GalleryDao.getInstance().delete(num);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
	<%if(isDelete){%>
		alert("이미지가삭제되었습니다");
		location.href="../list.jsp"		
	<%} %>
</script>
</body>
</html>