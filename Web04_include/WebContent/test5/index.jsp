<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"href="${pageContext.request.contextPath}/Resources/css/bootstrap.css" />
<style>

 footer{
   position: relative;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: gray;
   color: white;
   text-align: center;
 }


</style>

</head>
<body>
	<%-- thisPage 라는 파라미터 명으로 home 이라는 문자열 전달하기 --%>
	<jsp:include page="../include/navbar3.jsp">
		<jsp:param value="index" name="thisPage" />
	</jsp:include>
	
	<div class="container">
		<h1>인덱스 페이지 입니다</h1>
		<ul>
			<li><a href="test1/main.jsp">inclued1 디렉티브</a></li>
			<li><a href="test2/main.jsp">inclued2 디렉티브</a></li>
			<li><a href="test3/main.jsp">inclued3 </a></li>
			<li><a href="test5/home.jsp">inclued4 디렉티브</a></li>
			<li><a href="test5/game.jsp">inclued5 디렉티브</a></li>
			<li><a href="test5/study.jsp">inclued6 디렉티브</a></li>
		</ul>
	</div>

		<jsp:include page="../include/footer.jsp">
			<jsp:param value="study" name="thisPage" />
		</jsp:include>

</body>
</html>