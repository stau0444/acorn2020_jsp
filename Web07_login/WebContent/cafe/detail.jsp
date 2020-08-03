<%@page import="test.cafe.dao.CafeDao"%>
<%@page import="test.cafe.dto.CafeDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. GET 방식 파라미터로 전달되는 글번호를 읽어온다.
	int num=Integer.parseInt(request.getParameter("num"));
	//2. DB 에서 해당 글 정보를 얻어온다.
	CafeDto dto=CafeDao.getInstance().getData(num);
	//3. 해당글의 조회수를 1 증가 시킨다.
	CafeDao.getInstance().addViewCount(num);
	//4. 글 정보를 응답한다.
	System.out.print(num);
	System.out.print(dto.getNextNum());
	System.out.print(dto.getPrevNum());
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/cafe/detail.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
<style>
	/* 글 내용을 출력할 div 에 적용할 css */
	.contents{
		width: 100%;
		border: 1px dotted #cecece;
	}
</style>
</head>
<body>
<div class="container">
	<h1>글 상세 페이지</h1>
	<div class="float-right">
		<%if(dto.getPrevNum()!=0){%>
			<a href="detail.jsp?num=<%=dto.getPrevNum()%>" class="mr-3">&larr;이전글</a>
		<%}%>
		<%if(dto.getNextNum()!=0){%>
			<a href="detail.jsp?num=<%=dto.getNextNum()%>">다음글&rarr;</a>
		<%}%>
	</div>
	<table class="table table-primary">
		<tr>
			<th>글번호</th>
			<td><%=dto.getNum() %></td>
		</tr>
		<tr>
			<th>작성자</th>
			<td><%=dto.getWriter() %></td>
		</tr>
		<tr>
			<th>제목</th>
			<td><%=dto.getTitle() %></td>
		</tr>
		<tr>
			<th>등록일</th>
			<td><%=dto.getRegdate() %></td>
		</tr>
	</table>
	<div class="contents" style="height:500px;"><%=dto.getContent() %></div>
	<div class="float-right mt-2">
		<a href="list.jsp" class="btn btn-primary mr-2">목록 보기</a>
		<%	
			//세션 영역의 아이디를 읽어와본다. 만일 로그인 하지 않았으면 null 이다.
			String id=(String)session.getAttribute("id");
		%>
			<%if(dto.getWriter().equals(id)){ %>
				<a href="private/updateform.jsp?num=<%=dto.getNum() %>" class="btn btn-success mr-2">
					<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-pencil" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
					  <path fill-rule="evenodd" d="M11.293 1.293a1 1 0 0 1 1.414 0l2 2a1 1 0 0 1 0 1.414l-9 9a1 1 0 0 1-.39.242l-3 1a1 1 0 0 1-1.266-1.265l1-3a1 1 0 0 1 .242-.391l9-9zM12 2l2 2-9 9-3 1 1-3 9-9z"/>
					  <path fill-rule="evenodd" d="M12.146 6.354l-2.5-2.5.708-.708 2.5 2.5-.707.708zM3 10v.5a.5.5 0 0 0 .5.5H4v.5a.5.5 0 0 0 .5.5H5v.5a.5.5 0 0 0 .5.5H6v-1.5a.5.5 0 0 0-.5-.5H5v-.5a.5.5 0 0 0-.5-.5H3z"/>
					</svg>
				</a>
				<a href="private/delteform.jsp?num=<%=dto.getNum() %>" class="btn btn-danger ">
					<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-trash" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
					  <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
					  <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4L4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
					</svg>
				</a>
			<%} %>
	</div>
	<%-- 
		글 작성자와 로그인 된 아이디가 같을때만 기능을 제공해 준다. 
		즉, 본인이 작성한 글만 수정할수 있도록 하기 위해
	--%>
</div>
</body>
</html>





