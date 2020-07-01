<%@page import="java.util.ArrayList"%>
<%@page import="test.dto.MemberDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/Web02_Servlet/Bootstrap/css/bootstrap.css" />
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%		
	List<MemberDto> list= new ArrayList<>();
	list.add(new MemberDto(1,"김구라","노량진"));
	list.add(new MemberDto(2,"해골","행신동"));
	list.add(new MemberDto(3,"원숭이","상도동"));
	%>
	<div class='container'>
		<table class="table table-dark">
			<tr>
				<td>번호</td>
				<td>이름</td>
				<td>사는동네</td>
			</tr>
			
				<% for(MemberDto tmp:list){ %>
				<tr>
					<td><%=tmp.getNum() %></td>
					<td><%=tmp.getName() %></td>
					<td><%=tmp.getAddr() %></td>
				</tr>
				<%} %>
			
		</table>
	
		
	</div>
</body>
</html>