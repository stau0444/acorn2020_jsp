<%@page import="test.file.dto.FileDto"%>
<%@page import="java.util.List"%>
<%@page import="test.file.dao.FileDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
 	FileDao dao=FileDao.getInstance();
 	List<FileDto> dto=dao.getList();
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>파일 목록입니다</h1>
	<table>
		<tr>
			<th>번호</th>
			<th>작성자</th>
			<th>제목</th>
			<th>파일명</th>
			<th>파일크기</th>
			<th>등록일</th>
		</tr>
		<tbody>
		<%for(FileDto tmp:dto){ %>
			<tr>
				<td><%=tmp.getNum()%></td>
				<td><%=tmp.getWriter() %></td>
				<td><%=tmp.getTitle() %></td>
				<td><%=tmp.getOrgFileName() %></td>
				<td><%=tmp.getFileSize() %></td>
				<td><%=tmp.getRegdate() %></td>
			</tr>
		<%} %>
		</tbody>
		<a href="private/upload_form.jsp">파일 업로드</a>
	</table>
</body>
</html>