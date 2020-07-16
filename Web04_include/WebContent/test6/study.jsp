<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Resources/css/bootstrap.css" />
</head>
<body> 
	<jsp:include page="../include/navbar2.jsp">	
		<jsp:param value="study" name="thisPage"/>
	</jsp:include>
	<h1>study.jsp입니다</h1>
	<p>
		Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur sed 
		soluta laborum sapiente architecto totam ullam aliquid facere sunt maxime.
		 Obcaecati fugiat aliquid expedita provident sequi sunt consectetur ratione 
		 accusamus?
	</p>
</body>
</html>