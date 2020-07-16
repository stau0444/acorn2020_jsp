<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<input type="text" id="msg" placeholder="서버에 할말 입력" />
<button id="sendBtn">전송</button>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	/*
		전송 버튼 눌렀을때 입력한 문자열을 읽어와서
		/ajax/send.jsp 페이지에 포스트 방식으로 전송해 보세요 
		입력한 문자열은 msg라는 파라미터 명으로 전송하기
		send.jsp 페이지에서는 전송된 내용을 서버측 콘솔에 출력 해보세요.
		send.jsp 페이지에서 응답은 json형식 {"isSuccess":true}를 응답
		클라이언트에서는 서버가 응답한 데이터를 클라이언트측 콘솔에 출력
		
	*/
	
	$("#sendBtn").on("click",function(){
		var msg=$("#msg").val();
		$.ajax({
			method:"post",
			url:"send.jsp",
			data:{msg:msg},
			success:function(data){
				console.log(data.isSuccess);
			}
		})
	})
</script>
</body>
</html>