<%@page import="test.users.dto.UsersDto"%>
<%@page import="test.users.dao.UsersDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String id=(String)session.getAttribute("id");
	UsersDto dto=UsersDao.getInstance().userInfo(id);
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<table class="table table-success">
		<thead class="thead-dark">
			<tr>
				<th>USER ID</th>
				<td><%=dto.getId() %></td>
			</tr>
			<tr>
				<th>USER PWD</th>
				<td><%=dto.getPwd() %></td>
			</tr>
			<tr>
				<th>USER EMAIL</th>
				<td><%=dto.getEmail() %></td>
			</tr>
			<tr>
				<th>REGDATE</th>
				<td><%=dto.getRegdate()%></td>
			</tr>
		</thead>
	</table>
		<a href="update_form.jsp" class="btn btn-warning float-right ml-4">개인정보 수정</a>
		<a href="updatepwd.jsp" class="btn btn-warning float-right ml-4">비밀번호 수정</a>
		<a href="javascript:deleteConfirm()" class="btn btn-danger float-right">탈퇴</a>
	
</div>
<script>
	function deleteConfirm(){
		var isDelete=confirm("<%=id%> 회원님 탈퇴 하시겠습니까?")
		if(isDelete){
			location.href="delete.jsp";
		}
	}
	
</script>


</body>
</html>