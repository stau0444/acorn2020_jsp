<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/ajax/test01.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<button id="getBtn">요청하기</button>
	<button id="getBtn2">요청하기2</button>
	<button id="getBtn3">요청하기3</button>
	<script>
		//id 가 getBtn 인 곳에 "click" 이벤트가 일어났을때 호출되는 함수 등록
		$("#getBtn").on("click",function(){
			//jquery의 기능을 이용해서 ajax 요청
			$.ajax({
				method:"GET",
				url:"${pageContext.request.contextPath}/ajax/getmsg.jsp",
				data:"num=1&name=kimgura",
				success:function(  ){
					 document.getElementById("ptag").innerText=responseData;
				},
			});
		});
		
		$("#getBtn2").on("click", function(){
			$.ajax({
				method:"get", //소문자 작성가능
				url:"getmsg.jsp", //상대경로 가능
				data:{num:2, name:"해골"},//요청 파라미터 오브젝트로 전달 가능
				success:function(data){//함수에 전달받달는 변수명은 마음대로 작성가능
					//data는 json 형식을 가지고 있는 string type 이다
					console.log(data);
					//javascript 에서 사용 하려면 object 로 바꿔서 사용해야 한다.
					var obj=JSON.parse(data);
					console.log(obj);
					//object이기 떄문이 쉽게 사용가능
					alert(obj.msg);
					
				}
			})
		})
		$("#getBtn3").on("click",function(){
			$.ajax({
				method:"get",
				url:"getgreet.jsp",
				success:function(data){
					console.log(data);
					document.write(data.greet)
				}
			});
		});
		$(#getBtn4).on("click",function(){
			$.ajax({
				method:"",
				url:"",
				data:"",
				success:function(){
					
				}
			});
		});
		//method -요청방식
		//url-요청경로
		//data-요청파라미터
		//success-요청결과를 가져오는 함수 파라미터로 요청된 데이터가 들어온다.
	</script>


	<p id="ptag"></p>
</body>
</html>