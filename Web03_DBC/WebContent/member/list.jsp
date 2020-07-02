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
</head>
<% 
	MemberDao dao=MemberDao.getInstance();
	List<MemberDto> list= dao.getList();
%>
<body>
	<div class="container"> 
		<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>이름</th>
					<th>주소</th>
				</tr>
			</thead>
			<tbody>
			<%for(MemberDto tmp:list){ %>
				<td><%tmp.getNum();%></td>
				<td><%tmp.getName();%></td>
				<td><%tmp.getAddr();%></td>
			<%}%>
			</tbody>
		</table>
	</div>
</body>
</html>