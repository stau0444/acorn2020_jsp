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
<style>
	#userImg{
		width:100px;
		height:100px;
		border:2px solid #cecece;
		border-radius:50%;
		
	}
</style>
</head>
<body>


<div class="container">
<div class="row">
	<div class="col-8">
		<h1>회원정보</h1>
		<img id="userImg"src="${pageContext.request.contextPath}<%=dto.getProfile() %>" alt="" />
		<a href="${pageContext.request.contextPath}/index.jsp" class="btn btn-primary  my-4">홈으로</a>
			<table class="table table-success w-50">
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
			<div class="btn btn-group">
				<a href="update_form.jsp" class="btn btn-warning  ml-2">개인정보 수정</a>
				<a href="updatepwd.jsp" class="btn btn-warning  ml-2">비밀번호 수정</a>
				<a href="javascript:deleteConfirm()" class="btn btn-danger ml-2 ">탈퇴</a>
			</div>
			
		</div>
	</div>
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