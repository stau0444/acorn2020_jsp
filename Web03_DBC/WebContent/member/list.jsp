<%@page import="java.util.List"%>
<%@page import="test.dao.MemberDao"%>
<%@page import="test.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/Web03_DBC/css/bootstrap.css" />
</head>
<% 
	MemberDao dao=MemberDao.getInstance();
	List<MemberDto> list= dao.getList();
%>
<body>
	<div class="container"> 
		<div class="navbar-light bg-light">
		 	<a href="${pageContext.request.contextPath}" class="navbar-brand">UGO</a>
		 	<ul class="navbar-nav">
		 		<li class="nav-item"><a class="nav-link active" href="${pageContext.request.contextPath}/member/list.jsp">회원 목록 보기</a></li>
		 		<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/todo/todo.jsp">할일 목록 보기</a></li>
		 	</ul>
		 </div>
		<table class="table table-primary">
			<thead>
				<tr>
					<th>번호</th>
					<th>이름</th>
					<th>주소</th>
				</tr>
			</thead>
			<tbody>
				
					<%for(MemberDto tmp:list){ %>
						<tr>
							<td><%=tmp.getNum()%></td>
							<td><%=tmp.getName()%></td>
							<td><%=tmp.getAddr()%></td>
							<td><a href="delete.jsp?num=<%=tmp.getNum()%>">삭제</a></td>
							<td><a href="updateform.jsp?num=<%=tmp.getNum()%>">수정</a></td>
						</tr>
					<%}%>
				
			</tbody>
		</table>
		<a href="insertform.jsp">회원 추가 하러 가기</a>
	</div>
</body>
</html>