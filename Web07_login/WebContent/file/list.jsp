<%@page import="test.file.dto.FileDto"%>
<%@page import="java.util.List"%>
<%@page import="test.file.dao.FileDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
 	FileDao dao=FileDao.getInstance();
 	List<FileDto> dto=dao.getList();
 	//로그인 된 아이디 읽어오기 (로그인 하지 않으면 null)
 	String id=(String)session.getAttribute("id");
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/bootstrap.min.css" />
</head>
<body>
	<div class="container my-4">
		<h1 class="text-center">파일 목록</h1>
		<table class="table tabler-light">
			<thead class="thead thead-dark">
				<tr>
					<th>번호</th>
					<th>작성자</th>
					<th>제목</th>
					<th>파일명</th>
					<th>파일크기</th>
					<th>등록일</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>
			<%for(FileDto tmp:dto){ %>
				<tr>
					<td><%=tmp.getNum()%></td>
					<td><%=tmp.getWriter() %></td>
					<td><%=tmp.getTitle() %></td>
					<td><a href="download.jsp?num=<%=tmp.getNum()%>"><%=tmp.getOrgFileName() %></a></td>
					<td><%=tmp.getFileSize() %></td>
					<td><%=tmp.getRegdate() %></td>
					<td>
						<%if(tmp.getWriter().equals(id)){%>
							<a href="private/delete.jsp?num=<%=tmp.getNum()%>">삭제</a>
						<%} %>
					</td>
				</tr>
			<%} %>
						
			</tbody>
			<a href="private/upload_form.jsp" class="btn btn-primary mb-2 float-right">파일 업로드</a>
		</table>
	</div>
</body>
</html>