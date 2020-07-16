<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Resources/css/bootstrap.css" />

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
	<jsp:include page="../include/navbar3.jsp">		
		<jsp:param value="game" name="thisPage"/>
	</jsp:include>
	<div class="container">
		<h1>game.jsp입니다</h1>
		<p>
			Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur sed 
			soluta laborum sapiente architecto totam ullam aliquid facere sunt maxime.
			 Obcaecati fugiat aliquid expedita provident sequi sunt consectetur ratione 
			 accusamus?
		</p>
	</div>
		<jsp:include page="../include/footer.jsp">	
			<jsp:param value="study" name="thisPage"/>
		</jsp:include>
</body>
</html>