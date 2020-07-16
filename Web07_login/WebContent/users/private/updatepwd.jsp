<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
</head>
<body>
	<div class="container">
		<h1>비밀번호 수정 폼</h1>
		<form action="pwd_update.jsp" method="post" id="myForm">
			<div class="form-group">
				<label for="pwd">기존 비밀번호</label>
				<input type="text" name="pwd" id="pwd" class="form-control"/>
			</div>
			<div class="form-group">
				<label for="newPwd1">새로운 비밀번호</label>
				<input type="password" name="newPwd1" id="newPwd1" class="form-control"/>
			</div>
			<div class="form-group">
				<label for="newPwd2">새로운 비밀번호</label>
				<input type="password" name="newPwd2" id="newPwd2" class="form-control"/>
			</div>
			<button type="submit">수정하기</button>
		</form>
	</div>
<script
  src="https://code.jquery.com/jquery-3.5.1.js"
  integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
  crossorigin="anonymous"></script>
 <script>
	$("#myForm").on("submit",function(){
		var pwd1=$("#newPwd1").val();
		var pwd2=$("#newPwd2").val();
		if(pwd1!=pwd2){
			alert("새로운 비밀번호가 일치 하지 않아요");
			$("#newPwd1").val("").focus();
			$("#newPwd2").val("");
			return false;
		}
	})
</script>
</body>
</html>