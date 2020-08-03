<%@page import="java.net.URLEncoder"%>
<%@page import="test.file.dto.FileDto"%>
<%@page import="java.util.List"%>
<%@page import="test.file.dao.FileDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/bootstrap.min.css" />
</head>
<body>
<%
 		
	 	//로그인 된 아이디 읽어오기 (로그인 하지 않으면 null)
	 	String id=(String)session.getAttribute("id");
	 	//한 페이지에 나타낼 row 의 갯수
 		final int PAGE_ROW_COUNT=5;
 		//하단 디스플레이 페이지 갯수
 		final int PAGE_DISPLAY_COUNT=5;
 		
 		//보여줄 페이지의 번호
 		int pageNum=1;
 		//보여줄 페이지의 번호가 파라미터로 전달되는지 읽어와 본다.	
 		String strPageNum=request.getParameter("pageNum");
 		
 		if(strPageNum != null){//페이지 번호가 파라미터로 넘어온다면
 			//페이지 번호를 설정한다.
 			pageNum=Integer.parseInt(strPageNum);
 		}
 		//보여줄 페이지 데이터의 시작 ResultSet row 번호
 		int startRowNum=1+(pageNum-1)*PAGE_ROW_COUNT;
 		//보여줄 페이지 데이터의 끝 ResultSet row 번호
 		int endRowNum=pageNum*PAGE_ROW_COUNT;
 		
		
 		/*
 			검색 키워드에 따른 페이징 처리
 		*/
 		String keyword=request.getParameter("keyword");
 		
 		if(keyword==null){
 			keyword="";
 			
 		}
 			
 			String encodedK=URLEncoder.encode(keyword);
 		
 	 		String condition=request.getParameter("condition");
 		
 		//검색 키워드와 startRowNum,endRowNum 을 담을 FileDto 객체 생성
 		FileDto dto= new FileDto();
 		dto.setStartRowNum(startRowNum);
 		dto.setEndRowNum(endRowNum);
 		
 		//검색 키워드에 맞는 파일목록 중에서 pageNum에 해당하는 목록 얻어오기 담을 List
 		List<FileDto> list=null;
 		int totalRow=0;
 		if(!keyword.equals("")){//키워드가 있다면
 			if(condition.equals("title_FileName")){
 				//검색 키워드를 FileDto 객체의 필드에 담는다.
 				dto.setTitle(keyword);
 				dto.setOrgFileName(keyword);
 				list=FileDao.getInstance().getListTF(dto);
 				totalRow=FileDao.getInstance().getCountTF(dto);
 			}else if(condition.equals("title")){
 				dto.setTitle(keyword);
 				list=FileDao.getInstance().getListT(dto);
 				totalRow=FileDao.getInstance().getCountT(dto);
 			}else if(condition.equals("writer")){
 				dto.setWriter(keyword);
 				list=FileDao.getInstance().getListW(dto);
 				totalRow=FileDao.getInstance().getCountW(dto);
 			}
 		}else{//키워드가 null일 경우
 			condition="";
 			keyword="";
 			list=FileDao.getInstance().getList(dto);
 			totalRow=FileDao.getInstance().getCount();
 		}
 		//전체 페이지의 갯수 구하기
 		//(double) 쓰는 이유 정수로 나누면 소수점이 안 나옴으로 올림을 할 수 없다.
 		int totalPageCount=
 				(int)Math.ceil(totalRow/(double)PAGE_ROW_COUNT);
 		//시작 페이지 번호
 		int startPageNum=
 			1+((pageNum-1)/PAGE_DISPLAY_COUNT)*PAGE_DISPLAY_COUNT;
 		//끝 페이지 번호
 		int endPageNum=startPageNum+PAGE_DISPLAY_COUNT-1;
 		//끝 페이지 번호가 잘못된 값이라면 
 		if(totalPageCount < endPageNum){
 			endPageNum=totalPageCount; //보정해준다. 
 		}
 		//jstl에서 사용할 list를 request에 담는다
 		request.setAttribute("list", list);
 		
 		//jstl에서 사용할 변수들을 request에 담는다.
 		request.setAttribute("startPageNum", startPageNum);
 		request.setAttribute("endPageNum", endPageNum);
 		request.setAttribute("pageNum", pageNum);
 		request.setAttribute("totalPageCount", totalPageCount);
 		request.setAttribute("condition", condition);
 		request.setAttribute("keyword", keyword);
 		request.setAttribute("encodedK", encodedK);
 		
 		
 %>
	<div class="container my-4">
		<a href="javascript:">총게시물:<%=totalRow %></a>
		<a href="private/upload_form.jsp" class="btn btn-primary mb-2 float-right">파일 업로드</a>
		<h1 class="text-center"><a href="list.jsp">파일 목록</a></h1>
		<table class="table table-striped">
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
			
			<%--JSTL 사용한 코드 --%>
			<c:forEach var="tmp" items="${list}">
				<tr>
					<td>${tmp.num}</td>
					<td>${tmp.writer}</td>
					<td>${tmp.title}</td>
					<td><a href="download.jsp?num=${tmp.num}">${tmp.orgFileName}</a></td>
					<td><fmt:formatNumber value="${tmp.fileSize}" pattern="#,###"/></td>
					<td>${tmp.regdate}</td>
					<td>
						<c:if test="${tmp.writer eq id }">
							<a href="private/delte.jsp?num=${tmp.num}">${tmp.orgFileName}</a>
						</c:if>
					</td>
				</tr>
			</c:forEach>
			<%--일반 jsp 코드
			<%for(FileDto tmp:list){ 
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
			 --%>
			</tbody>
		</table>
		
		
		<div class="page-display">
			<ul class="pagination justify-content-center">
				<%--JSTL --%>
				<c:if test="${startPageNum ne 1}">
					<li class="page-item"><a class="page-link" href="list.jsp?pageNum=${condition}&condition=${startPageNum-1}&keyword=${encodedK}">prev</a></li>
				</c:if>
				<c:forEach var="i" begin="${startPageNum}" end="${endPageNum}" step="1">
					<c:choose >
						<c:when test="${i eq pageNum}">
							<li class="page-item active"><a class="page-link" href="list.jsp?pageNum=${i}&condition=${condition }&keyword=${encodedK}">${i}</a></li>
						</c:when>
						<c:otherwise>
							<li class="page-item"><a class="page-link" href="list.jsp?pageNum=${i}&condition=${condition }&keyword=${encodedK}">${i}</a></li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<c:if test="${endPageNum lt totalPageNum }">
					<li class="page-item" ><a class="page-link" href="list.jsp?pageNum="${endPageNum+1}&condition=${condition }&keyword=${encodedK}">next</a></li>
				</c:if>
				
				<%-- 일반 jsp
				<%if (startPageNum!=1){ %>
					<li class="page-item"><a class="page-link" href="list.jsp?pageNum=<%=startPageNum-1%>&condition=<%=condition%>&keyword=<%=encodedK%>">prev</a></li>
				<%} %>
				<%for(int i= startPageNum; i<=endPageNum; i++){ %>
					<%if(i==pageNum){ %>
						<li class="page-item active"><a class="page-link" href="list.jsp?pageNum=<%=i%>&condition=<%=condition%>&keyword=<%=encodedK%>"><%=i%></a></li>
					<%}else{ %>
						<li class="page-item"><a class="page-link" href="list.jsp?pageNum=<%=i%>&condition=<%=condition%>&keyword=<%=encodedK%>"><%=i%></a></li>
					<%} %>
				<%} %>
				<%if(endPageNum<totalPageCount){%>
					<li class="page-item" ><a class="page-link" href="list.jsp?pageNum=<%=endPageNum+1%>&condition=<%=condition%>&keyword=<%=encodedK%>">next</a></li>
				<%} %>
				--%>
			</ul>
		</div>
		<hr/>
		<form action="list.jsp" method="get" class="float-right mt-3">
			<label for="condition">검색조건</label>
			<select name="condition" id="condition" >
				<option value="title_FileName" <%if(condition.equals("title_filename")){ %>selected<%} %>>>제목+파일명</option>
				<option value="title" <%if(condition.equals("title")){ %>selected<%} %>>제목</option>
				<option value="writer"  <%if(condition.equals("writer")){ %>selected<%} %>>작성자</option>
			</select>
			<input type="text" name="keyword" value="${ket }"placeholder="검색중"/>
			<button type="submit" id="btn">검색</button>
		</form>
	</div>
</body>
</html>