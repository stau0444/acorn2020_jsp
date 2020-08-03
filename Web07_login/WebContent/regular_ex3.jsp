<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>regular_ex3.jsp</title>
<style>
	.errorMsg{
		color:red;
		font-size:10px;
		display:none;
	}
</style>
</head>
<body>
	<a href="regular_ex4">다음예제</a>
	<form action="insert.jsp" method="post" id="myForm">
		<input type="text" id="id" name="id" placeholder="아이디 입력" />
		<div class="errorMsg">아이디는 영문자 소문자로 시작하고 5~10글자 사이로 입력해주세요</div>
		<button type="submit">가입</button>
	</form>
<script src="${pageContext.request.contextPath}/js/jquery-3.5.1.js"></script>
<script>
	//아이디를 검정할 수 있는 정규 표현식
	var reg_id=/^[a-z].{4,9}$/;
	// form 에 submit 이벤트가 일어 났을때
	$("#myForm").on('submit',function(){
		var inputId=$("#id").val();
		if(!reg_id.test(inputId)){
			// 경고창 띄우고
			$(".errorMsg").show();
			// 틀린곳에 포커스 주고
			$("#id").focus();
			//폼전송 막는다.
			return false;
		}
	})
</script>
</body>
</html>