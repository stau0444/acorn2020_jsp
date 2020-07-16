<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>form에 입력한 내용을 ajax 요청으로 전송하는 예제</h1>
	<form action="insert.jsp" method="post">
		<input type="text" name="email" placeholder="이메일 입력"/><br />
		<input type="text" name="phone" placeholder="전화번호 입력" />
		<button type="submit" id="sendBtn">전송</button>
	</form>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	//폼에 submit 이벤트가 일어났을때 실행되는 함수 ajax로 확인을 해야하기때문에 제출을 막아줘야함
	$("form").on("submit",function(){
		var action=$(this).attr("action");//action 속성의 value 값 insert.jsp
		var method=$(this).attr("method");//method 속성의 value 값 post
		//email=xxx&phone=xxx 형식의 문자열이 일어와진다.
		var query=$(this).serialize();//폼에 입력한 값을 query String으로 읽어오기
		console.log(query);
		//ajax요청을 통해서 폼에 입력한 내용을 전송한다.
		$.ajax({
			method:method,
			url:action,
			data:query,
			success:function(data){
				console.log(data.name);
				console.log(data.isSuccess);
			}			
		})
		return false;
	});
</script>
</body>
</html>