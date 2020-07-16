<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--클라이언트입장에서는 차이가없지만 서버에서는 동작하는데에 차이가있다
	   @include할경우  main에 합쳐저 main이 응답되지만
	   :include할 경우 부품들이 각각 응답한다.
	    --%>
	<jsp:include page="header.jsp"></jsp:include>
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