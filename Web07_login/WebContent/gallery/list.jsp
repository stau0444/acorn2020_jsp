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
<style>
	.container{
		 text-align:center;
	}
	.loader{
		margin-top: 50px;
		position: fixed;
		width:100%;
		left:0;
		bottom:0;
		text-align:center;
		z-index:1000;
		display: none;
	}
</style>
</head>
<body>
	<%
		
		String id=(String)session.getAttribute("id");
		
		//한 페이지에 나타낼 row 의 갯수
		final int PAGE_ROW_COUNT=5;
	
		//보여줄 페이지의 번호
		int pageNum=1;
		
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
	
	<div class="container">
		<a href="private/upload_form.jsp">업로드 하러가기</a>
		<h1>갤러리 목록 입니다</h1>
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
		
	</div>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>
		//페이지가 처음 로딩될대 1page 보여준다 가정	
		var currentPage=1;
		//전체 페이지의 수를 javascript 변수에 담는다.
		var totalPageCount=<%=totalPageCount%>
		
		var isSuccess=false;
		$(window).on("scroll",function(){
			if(currentPage==totalPageCount){
				return;
			}
			console.log("scroll!");
			//위쪽으로 스크롤된 길이 구하기
			var scrollTop=$(window).scrollTop();
			//window 높이
			var windowHeight=$(window).height();
			//document(문서)의 높이
			var documentHeight=$(document).height();
			//바닥까지 스크롤 되었는지 여부
			var isBottom=scrollTop+windowHeight+5>=documentHeight;
			if(isBottom){
				//로딩이미지 띄운다
				$(".loader").show();
				currentPage++;// 페이지 1증가시키고
				//해당페이지의 내용을 ajax 요청을 해서 받아온다
				setTimeout(()=> {
					$.ajax({
						url:"ajax_list.jsp",
						method:"get",
						data:{pageNum:currentPage},
						success:function(data){
							//data가 html 마크업 형태의 문자열
							$(".container").append(data);
							//로딩이미지 숨긴다
							$(".loader").hide();
						}
					})
				}, 2000);
			
			}
 		});
	</script></body>
</html>