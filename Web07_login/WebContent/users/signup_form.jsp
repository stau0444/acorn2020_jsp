<%@page import="test.users.dao.UsersDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/bootstrap.min.css" />
<style>
#output{
	width:150px;
	height:150px;
	border:2px solid tomato;
	border-radius:50%;
	display:block;
	margin:30px auto;
}
#image{display}
#openfile{display:}
</style>

</head>
<body>
	<div class="container" style="width:400px">
		<h1 class="text-center">Sign-Up</h1>
		<form action="signup_action.jsp" method="post" id="myForm" >
			<div class="form-group">				
				<label for="image">프로필 사진</label>
				<input type='file' id="openfile"accept='image/*' onchange='openFile(event)'><br>
				<img id='output'>
				<input type="hidden" name="imgUrl" value="" />
			<script>
			  	var openFile = function(event) {
			  	var input = event.target;
			
			    var reader = new FileReader();
			    	reader.onload = function(){
			    var dataURL = reader.result;
			    var output = document.getElementById('output');
			      	output.src = dataURL;
			      	console.log(dataURL);
			    };
			    reader.readAsDataURL(input.files[0]);
			  };
			</script>
			</div>
			<div>				
				<label for="id">아이디</label>
				<input type="text" name="id" id="id" class="form-control-inline w-85"/>
				<button id="checkBtn">중복확인</button>
				<span id="checkResult"></span>
			</div>
			<div class="form-group mt-4 mb-4">
				<label for="pwd">비밀번호</label>
				<input type="password" name="pwd" id="pwd" class="form-control"/>
			</div>
			<div class="form-group mt-4 mb-4">
				<label for="checkPwd">비밀번호 확인</label>
				<input type="password" name="checkPwd" id="checkPwd" class="form-control"/>
			</div>
			<div class="form-group">
				<label for="email">이메일</label>
				<input type="text" name="email" id="eamil" class="form-control"/>
			</div>
			<button type="submit" class="btn btn-primary float-right">가입</button>
		</form>
	</div>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	

	var canUseId=false;
	
	$("#checkBtn").on("click",function(){
		var inputId=$("#id").val();
		
		$.ajax({
			method:"GET",
			url:"checkid.jsp",
			data:"inputId="+inputId,
			success:function(data){
				if(data.isExist){
					alert("아이디가 이미 존재합니다.");
					canUseId=false;
				}else{
					alert("아이디사용가능");
					canUseId=true;
				}
			}
		});
		return false;
	});
	
	//중복확인 안 한 상태에서 폼제출할시 중복확인시킴
	$("#myForm").on("submit",function(){
			
			if(!canUseId){
				alert("아이디 중복확인");
				return false;
			}
			
			if($("#pwd").val()=!$("#checkPwd").val){
				alert("비밀번호다름")
				return false;
			}
	});
	
	
	
	
	
	
	
	
</script>
</html>