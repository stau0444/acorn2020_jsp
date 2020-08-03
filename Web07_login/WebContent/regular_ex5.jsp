<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>regular_ex3.jsp</title>
<link rel="stylesheet" href="css/bootstrap.css" />
</head>
<body>
<div class="container">
	<a href="regular_ex4">다음예제</a>
	<form action="insert.jsp" method="post" id="myForm">
		<div class="form-group">
			<label for="id">아이디</label>
			<input type="text" id="id" name="id" placeholder="아이디 입력" class="form-control"/>
			<div  class="invalid-feedback">아이디는 영문자 소문자로 시작하고 5~10글자 사이로 입력해주세요</div>
		</div>
		<div class="form-group">
			<label for="phone">휴대전화번호</label>
			<input type="text" id="phone" name="phone" placeholder="010-1010-1010" class="form-control" />
			<div  class="invalid-feedback">휴대폰 번호 형식에 맞게 입력 하세요.</div>
		</div>
		<button type="submit" class="btn btn-primary">가입</button>
	</form>
</div>
<script src="${pageContext.request.contextPath}/js/jquery-3.5.1.js"></script>
<script>
	//아이디를 검정할 수 있는 정규 표현식
	var reg_id=/^[a-z].{4,9}$/;
	//전화번호 검증
	var reg_phone=/^010-[0-9]{4}-[0-9]{4}$/;
	// form 에 submit 이벤트가 일어 났을때
	//id 유효성
	var isIdValid=false;
	//phone 유효성
	var isPhoneValid=false;
	//form 유효성
	var isFormValid=false;
	
	$("#id").on("input",function(){
		var inputId=$("#id").val();
		isIdValid=reg_id.test(inputId);
		if(isIdValid){
			$(this).removeClass("is-invalid");
		}else{
			$(this).addClass("is-invalid");
		}
	})
	$("#phone").on("input",function(){
		var inputPhone=$("#phone").val();
		isPhoneValid=reg_phone.test(inputPhone);
		if(isPhoneValid){
			$(this).removeClass("is-invalid");
		}else{
			$(this).addClass("is-invalid");
		}
	});
	$("#myForm").on("submit",function(){
		isFormValid=isIdValid && isPhoneValid;
		if(!isFormValid){
			return false;
		}
	});
	
</script>
</body>
</html>