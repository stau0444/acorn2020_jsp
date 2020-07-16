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
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">

</head>
<body>
	<div class="container">
		<form action="update_action.jsp" class="form-group">
			<div class="jumbotron mt-4">
			  <input type="hidden" name="num" value="<%=dto.getNum()%>" />
			  <input type="hidden" name="regdate" value="<%=dto.getRegdate()%>" />
			  <p class="lead" >제목</p>
			  <h3 class="display-4"><input type="text" name="title"  id="title" value="<%=dto.getTitle() %>" class="form-control"/></h3>
			  <p class="lead mt-4 ">글쓴이<input type="text" name="writer" id="writer" value="<%=dto.getWriter()%>" class="form-control"/></p>
			  <hr class="my-4 ">
			  <p><textarea name="content" id="content" cols="30" rows="10" class="form-control"><%=dto.getContent()%></textarea></p>
			  <button type="submit" class="btn btn-success float-right mt-2">수정</button>
			</div>
		</form>
	</div>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>