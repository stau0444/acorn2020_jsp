<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="header.jsp"  %>
	<h1>main.jsp 페이지 입니다.</h1>
	<p>
		Lorem ipsum dolor sit amet, consectetur adipisicing elit.
	 	Ratione possimus dolor voluptatibus reprehenderit deleniti saepe odio placeat totam.
	 	Iusto porro inventore natus excepturi rem voluptatibus fugiat quis dignissimos accusamus eaque!
	</p>
	<a href="other.jsp">다른 페이지</a>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>