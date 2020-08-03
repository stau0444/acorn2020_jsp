<%@page import="test.gallery.dao.GalleryDao"%>
<%@page import="test.gallery.dto.GalleryDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		
		String id=(String)session.getAttribute("id");
		
		//한 페이지에 나타낼 row 의 갯수
		final int PAGE_ROW_COUNT=5;
		//하단 디스플레이 페이지 갯수
		//final int PAGE_DISPLAY_COUNT=5;
		
		//보여줄 페이지의 번호
		int pageNum=Integer.parseInt(request.getParameter("pageNum"));
		//보여줄 페이지의 번호가 파라미터로 전달되는지 읽어와 본다.	
	
		//보여줄 페이지 데이터의 시작 ResultSet row 번호
		int startRowNum=1+(pageNum-1)*PAGE_ROW_COUNT;
		//보여줄 페이지 데이터의 끝 ResultSet row 번호
		int endRowNum=pageNum*PAGE_ROW_COUNT;
		
		//전체 row 의 갯수를 읽어온다.
		int totalRow=GalleryDao.getInstance().getCount();
		//전체 페이지의 갯수 구하기
		int totalPageCount=
				(int)Math.ceil(totalRow/(double)PAGE_ROW_COUNT);
		
		GalleryDto dto=new GalleryDto();
		dto.setStartRowNum(startRowNum);
		dto.setEndRowNum(endRowNum);
		
		//1. DB 에서 글 목록을 얻어온다.
		List<GalleryDto> list=GalleryDao.getInstance().getList(dto);
		//2. 글 목록을 응답한다.
	%>
		<%for(GalleryDto tmp:list){%>
			<div class="wrapper pb-4">
				<img src="${pageContext.request.contextPath}<%=tmp.getImagepath()%>" style="width:400px; height:300px;"/>
				<p><%=tmp.getCaption() %></p>
				<p>
					<strong><%=tmp.getWriter() %></strong>
					<i><%=tmp.getRegdate() %></i>
					<%if(tmp.getWriter().equals(id)) {%>
					<a href="private/delete.jsp?num=<%=tmp.getNum()%>">삭제</a>
					<%} %>
				</p>
			</div>
		<%} %>
