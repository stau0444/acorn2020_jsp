<%@page import="test.dto.TodoDto"%>
<%@page import="java.util.List"%>
<%@page import="test.dao.TotoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/Web03_DBC/css/bootstrap.css" />
<style>

@import url('https://fonts.googleapis.com/css2?family=Notable&family=Roboto+Mono:wght@100&display=swap');

	button{
		height:38px
	}
	form{
		width:500px;
		
	}
	
	h2 {
	  font-family:  'Notable', sans-serif;
	}
</style>
</head>
<%
	
	TotoDao dao=TotoDao.getInstance();
	List<TodoDto> dto=dao.getList();
	String updateMsg=request.getParameter("sendUpdate");

%>
<body>
	<div class="container">
		<h2>TODO LIST</h2>
			<form action="insert.jsp" method="post" >
				<div class="form-group">
				<div class="input-group">
					<div class="input-group-prepend">
				    <label for="things">  
				    	<span class="input-group-text">할일</span>
				    	</label>
					  </div>
				 	<input type="text" name="things" id=things class="form-control"/>
					<button type="submit" class="btn btn-primary">추가</button>
					</div>
				</div>
			</form>
		
		<table class="table">
		<thead class="thead thead-dark">
			<tr>
				<td>번호</td>
				<td>할일</td>
				<td>저장날짜</td>
				<td>삭제</td>
			</tr>
		</thead>
		<tbody>
			
			<% for(TodoDto tmp:dto){%>
			 	<tr>
			 		<td><%=tmp.getNum() %></td>
			 		<td><a href="update.jsp?num=<%=tmp.getNum() %>"><%=tmp.getThings() %></a></td>
			 		<td><%=tmp.getTime() %> </td>
			 		<td><a href="delete.jsp?num=<%=tmp.getNum() %>">삭제</a></td>
			 	</tr>
			 <%}%>
		</tbody>
			
		</table>
	</div>	
		
</body>
</html>