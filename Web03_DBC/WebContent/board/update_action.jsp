<%@page import="test.board.dto.BoardDto"%>
<%@page import="test.dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  request.setCharacterEncoding("utf-8");
  int num=Integer.parseInt(request.getParameter("num"));
  String writer=request.getParameter("writer");
  String title=request.getParameter("title");
  String content=request.getParameter("content");
  String regdate=request.getParameter("regdate");
  BoardDto dto=new BoardDto();
  dto.setNum(num);
  dto.setWriter(writer);
  dto.setTitle(title);
  dto.setContent(content);
  dto.setRegdate(regdate);
  BoardDao dao=BoardDao.getInstance();
  boolean isSuccess=dao.update(dto);
  
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/Web03_DBC/Resources/css/bootstrap.css" />
</head>
<body>
	<div class="container">
		<%if(isSuccess){ %>
			<script> 
				alert("수정되었습니다");
				location.href="sel_content.jsp?num=<%=num%>"; 
			</script>
		<%}else{%>
					
			<script> 
				alert("제목 또는 글쓴이가 비어있습니다.");
				location.href="update_form.jsp?num=<%=num%>"; 
			</script>
		<%} %>
	</div>
</body>
</html>