<%@page import="test.users.dao.UsersDao"%>
<%@page import="test.users.dto.UsersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id=(String)session.getAttribute("id");
	UsersDto dto=UsersDao.getInstance().userInfo(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
<style>

#profileImage{
	width:100px;
	height:100px;
	border:2px solid #cecece;
	border-radius:50%;
	display:block;
	margin:50px 0 50px 200px;
}
#image{
		display:none;
}	
.wrap{
	width:500px
	
}

</style>
</head>
<body>
	<div class="container">
		<div class="wrap">
			<a href="${pageContext.request.contextPath}/index.jsp" class="btn btn-outline-success float-right">홈으로</a>
			<%if(dto.getProfile()==null){ %>
				<a id="profileLink" href="javascript:"><img id="profileImage" src="${pageContext.request.contextPath}/images/yellowbird.png"/></a>
			<%}else{ %>
				<a id="profileLink" href="javascript:"><img id="profileImage" src="${pageContext.request.contextPath}<%=dto.getProfile()%>"/></a>
			<%} %>
			<form action="update_action.jsp">
				<input type="hidden" name="profile" id="profile" value="<%=dto.getProfile()%>"/>
				<div class="form-group">
					<label for="id">아이디</label>
					<input type="text" value="<%=dto.getId() %>" disabled/ class="form-control ">
				</div>
				<div class="form-group">
					<label for="email">이메일</label>
					<input type="text" id="email" name="email" value="<%=dto.getEmail()%>" class="form-control"/>
				</div>
				
				<div class="float-right mt-3">
					<button type="submit" class="btn btn-primary" >수정확인</button>
					<button type="reset" class="btn btn-danger">취소</button>
				</div>
			</form>
			
			<form action="profile_upload.jsp" method="post" enctype="multipart/form-data" id="profileForm">
				<div class="form-group mt-4">
					<input type="file" name="image" accept=".jpg,.jpeg,.png,.JPG,.JPEG" id="image" class="form-control" />
				</div>
			</form>
		</div>
	</div>
	<!-- jquery 로딩 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
	<!-- jquery 플러그인 로딩 -->
	<script src="${pageContext.request.contextPath}/js/jquery.form.min.js"></script>
	
	<script>
		//프로필 링크 클릭시 실행할 함수 등록
		$("#profileLink").on("click",function(){
			$("#image").click();
		});
		
		//이미지를 선택했을때 실행할 함수 등록
		$("#image").on("change",function(){
			//폼을 강제 제출한다.
			$("#profileForm").submit();
		})
		
		//페이지 전환없이 폼제출되도록 플러그인 동작
		$("#profileForm").ajaxForm(function(data){
			//프로필 이미지 업데이트
			$("#profileImage").attr("src","${pageContext.request.contextPath}"+data.imageSrc)
			//회원 정보 수정폼 전송될때 전송 되도록한다.
			$("#profile").val(data.imageSrc);
			//input hidden 의 value 값으로 지정해준다.
		});
		//이미지 선택하면 파일선택 강제 선택시킨다.
		//들어오는 순간 자동으로 업로드시키고
		//응답받아서 이미지 scr를 바꿔준다.
	</script>
</body>
</html>