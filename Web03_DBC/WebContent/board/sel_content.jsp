<%@page import="test.board.dto.BoardDto"%>
<%@page import="test.dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% int num=Integer.parseInt(request.getParameter("num")); 
   BoardDao dao=BoardDao.getInstance();
   BoardDto dto=dao.getData(num);
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
		<div class="jumbotron mt-4">
		  <h3 class="display-4"><%=dto.getTitle() %></h3>
		  <p class="lead">글쓴이 <%=dto.getWriter() %></p>
		  <hr class="my-4">
		  <p><%=dto.getContent()%></p>
		 
		  	<div><a class="btn btn-danger btn-md float-right mt-2 " href="javascript:deleteConfirm(<%=dto.getNum()%>)" role="button">삭제</a></div>
		  	<div><a class="btn btn-primary btn-md float-right mt-2 mr-4" href="update_form.jsp?num=<%=dto.getNum()%>" role="button">수정</a></div>
		  </div>
		</div>
	</div>
</body>
<script>
	function deleteConfirm(num){
		var isDelete=confirm(num+"번 글을 삭제 하시겠습니까?")
		if(isDelete){
			location.href="delete_action.jsp?num="+num;
		}
		
	}
</script>
</html>