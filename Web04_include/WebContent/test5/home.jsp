<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous"> <style>
 
  footer{
   position: relative;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: gray;
   color: white;
   text-align: center;
 }

 .container1{
 	height:800px;
 }
 </style>
</head>
<body>
	<%-- thisPage 라는 파라미터 명으로 home 이라는 문자열 전달하기 --%>
	<jsp:include page="../include/navbar3.jsp">		
		<jsp:param value="home" name="thisPage"/>
	</jsp:include>
	<div class="container1">
		<h1>home.jsp입니다</h1>
		<p>
			Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur sed 
			soluta laborum sapiente architecto totam ullam aliquid facere sunt maxime.
			 Obcaecati fugiat aliquid expedita provident sequi sunt consectetur ratione 
			 accusamus?
			 		Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur sed 
			soluta laborum sapiente architecto totam ullam aliquid facere sunt maxime.
			 Obcaecati fugiat aliquid expedita provident sequi sunt consectetur ratione 
			 accusamus?
			 		Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur sed 
			soluta laborum sapiente architecto totam ullam aliquid facere sunt maxime.
			 Obcaecati fugiat aliquid expedita provident sequi sunt consectetur ratione 
			 accusamus?
			 		Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur sed 
			soluta laborum sapiente architecto totam ullam aliquid facere sunt maxime.
			 Obcaecati fugiat aliquid expedita provident sequi sunt consectetur ratione 
			 accusamus?
			 		Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur sed 
			soluta laborum sapiente architecto totam ullam aliquid facere sunt maxime.
			 Obcaecati fugiat aliquid expedita provident sequi sunt consectetur ratione 
			 accusamus?
			 		Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur sed 
			soluta laborum sapiente architecto totam ullam aliquid facere sunt maxime.
			 Obcaecati fugiat aliquid expedita provident sequi sunt consectetur ratione 
			 accusamus?
			 		Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur sed 
			soluta laborum sapiente architecto totam ullam aliquid facere sunt maxime.
			 Obcaecati fugiat aliquid expedita provident sequi sunt consectetur ratione 
			 accusamus?
			 		Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur sed 
			soluta laborum sapiente architecto totam ullam aliquid facere sunt maxime.
			 Obcaecati fugiat aliquid expedita provident sequi sunt consectetur ratione 
			 accusamus?
			 		Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur sed 
			soluta laborum sapiente architecto totam ullam aliquid facere sunt maxime.
			 Obcaecati fugiat aliquid expedita provident sequi sunt consectetur ratione 
			 accusamus?
			 		Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur sed 
			soluta laborum sapiente architecto totam ullam aliquid facere sunt maxime.
			 Obcaecati fugiat aliquid expedita provident sequi sunt consectetur ratione 
			 accusamus?
			 		Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur sed 
			soluta laborum sapiente architecto totam ullam aliquid facere sunt maxime.
			 Obcaecati fugiat aliquid expedita provident sequi sunt consectetur ratione 
			 accusamus?
			 		Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur sed 
			soluta laborum sapiente architecto totam ullam aliquid facere sunt maxime.
			 Obcaecati fugiat aliquid expedita provident sequi sunt consectetur ratione 
			 accusamus?
			 		Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur sed 
			soluta laborum sapiente architecto totam ullam aliquid facere sunt maxime.
			 Obcaecati fugiat aliquid expedita provident sequi sunt consectetur ratione 
			 accusamus?
		</p>
	</div>
	
			<jsp:include page="../include/footer.jsp">	
				<jsp:param value="study" name="thisPage"/>
			</jsp:include>
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>