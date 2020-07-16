<%@page import="test.dao.BoardDao"%>
<%@page import="test.board.dto.BoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String writer=request.getParameter("writer");
	String title=request.getParameter("title");
	String content=request.getParameter("content");
	BoardDto dto= new BoardDto();
	dto.setWriter(writer);
	dto.setTitle(title);
	dto.setContent(content);
	BoardDao dao=BoardDao.getInstance();
	boolean isSuccess=dao.insert(dto);
%>


<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/Web03_DBC/Resources/css/bootstrap.css" />
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<%if(isSuccess){ %>
			<script> 
				alert("입력되었습니다");
				location.href="list.jsp"; 
			</script>
		<%}else{%>
					
			<script> 
				alert("제목 또는 글쓴이가 비어있습니다.");
				location.href="insert_form.jsp"; 
			</script>
		<%} %>
	</div>

</body>
</html>