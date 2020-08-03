<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>regular_ex3.jsp</title>
<style>
	.errorMsgF{
		color:red;
		font-size:10px;
		display:none;
	}
	.errorMsgT{
		color:green;
		font-size:10px;
		display:none;
	}
</style>
</head>
<body>
	<a href="regular_ex4">다음예제</a>
	<form action="insert.jsp" method="post" id="myForm">
		<div>
			<label for="id">아이디</label>
			<input type="text" id="id" name="id" placeholder="아이디 입력" />
			<div id="idFeedbackF" class="errorMsgF">아이디는 영문자 소문자로 시작하고 5~10글자 사이로 입력해주세요</div>
			<div id="idFeedbackT" class="errorMsgT">아이디 형식에 맞습니다</div>
		</div>
		<div>
			<label for="phone">휴대전화번호</label>
			<input type="text" id="phone" name="phone" placeholder="010-1010-1010" />
			<div id="phoneFeedbackF" class="errorMsgF">휴대폰 번호 형식에 맞게 입력 하세요.</div>
			<div id="phoneFeedbackT" class="errorMsgT">휴대폰 번호 형식에 맞습니다.</div>
		</div>
		
		<button type="submit">가입</button>
	</form>
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
	var isFormValid=isIdValid&&isPhoneValid;
	
	$("#id").on("input",function(){
		var inputId=$("#id").val();
		isIdValid=reg_id.test(inputId)
		if(isIdValid){
			$("#idFeedbackF").hide();
			$("#idFeedbackT").show();
		}else{
			$("#idFeedbackT").hide();
			$("#idFeedbackF").show();
		}
	});
	$("#phone").on("input",function(){
		var inputPhone=$("#phone").val();
		isPhoneValid=reg_phone.test(inputPhone);
		if(isPhoneValid){
			$("#phoneFeedbackF").hide();
			$("#phoneFeedbackT").show();
		}else{
			$("#phoneFeedbackT").hide();
			$("#phoneFeedbackF").show();
		}
	});
	$("#myForm").on("submit",function(){
		if(isFormValid){
			return false;
		}
	});
	
</script>
</body>
</html>