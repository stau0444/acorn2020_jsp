<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="regular_ex2.jsp">다음예제</a>
<h1>Regular Expression</h1>
<div>
	<input type="text" id="id" placeholder="아이디 입력" />
</div>
<button id="checkBtn">확인</button>

<p><small> 영문자 소문자로 시작하고 5~10글자 이내, 특수문자 하나이상을 입력 하세요</small></p>
<script src="${pageContext.request.contextPath}/js/jquery-3.5.1.js"></script>
<script>
	var reg1=/^[a-z]/;
	//영문 소문자로 시작하는지
	var reg2=/^.{5,10}$/;
	//5~10글자 사이 인지
	var reg3=/[^a-zA-Z0-9]/;
	// 특수문자가 하나라도 포함되어있는지
	var reg4=/^[a-z].{4,9}$/;
	
	$("#checkBtn").on("click",function(){
		//1.입력한 문자열을 읽어와서
		var str=$("#id").val();
		//2.검증한다.
		var result1=reg1.test(str);
		if(result1){
			alert("영문자 소문자로 시작 했습니다.")
		}
		
		var result2=reg2.test(str);
		if(result2){
			alert("최소 5~10글자입니다");
		}
		
		var result3=reg3.test(str);
		if(result3){
			alert("특수문자가 포함되 있어요");
		}
		
		//if(reg4.test(str)==false){
			//alert("영문자 소문자로 시작하고 5~10글자 사이로 작성해 주세요");
		//}
		if(!reg4.test(str)){
			alert("영문자 소문자로 시작하고 5~10글자 사이로 작성해 주세요");
		}
	})
</script>
</body>
</html>