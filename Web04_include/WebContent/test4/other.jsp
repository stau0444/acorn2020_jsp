<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%--
    	include를 사용하면 include 한 파일이 합쳐진다.
    	3개의 서블릿이 만들어 지는게 아니라 
    	실행시 코드만 합쳐지고 1개의 서블릿만 만들어진다
     --%>
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
	<a href="../index.jsp">index</a>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>

