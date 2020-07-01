<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Bootstrap/css/bootstrap.css" />
<style>
	h1{
		text-align:center;
	}
	
	.container{
		width:400px;
		background-color:
		height:500px;
	}

	textarea{
		width:330px;
		height:150px;
	}
	.form-check-label{
		margin-right:15px;
	}
	.button-group{
		float:right;
		margin-left:15px;
	}
	.gender-label{
		margin-right:30px;
	}
	.list-group-item{
		padding:8px;
	}
	.checkbox-group{
		margin-left:30px;
		margin-top:7px;
	}
	.form-group{
		margin-bottom:7px
	}
	
	
	
	
</style>
</head>
	<body>
	
		<div class="container">
			<span class="input-group-text"><h3>회원가입 </h3></span>
			<form action="signup.jsp" method="post" >
				<ul class="list-group">
					<li class="list-group-item">
						<div class="form-group">
							<label for="id" ><span class="input-group-text">아이디</span></label>
							<input type="text" name="id" id="id" class="form-control" />
							<small class="form-text text-muted">영문 숫자 포함 10자 이상</small>
						</div>
					</li>
					<li class="list-group-item">
						<div class="form-group">
							<label for="pwd" ><span class="input-group-text">비밀번호</span></label>
							<input type="password" name="pwd" id="pwd" class="form-control"/>
							<small class="form-text text-muted">영문 숫자 특수문자 포함 10자 이상</small>
						</div>
					</li>
					<li class="list-group-item">
							<div class="form-group">
								<label><span class="input-group-text">성별 선택</span></label>
								<label class="gender-label">
									남<input type="radio" name="gender" value="man" checked/>
								</label>
								<label class="gender-label">
									여<input type="radio" name="gender" value="woman"/>
								</label>
							</div>
					</li>
					<li class="list-group-item">
						<div class="form-group">
							<label for="job" ><span class="input-group-text">직업 선택</span></label>
							<select class="custom-select mr-sm-2" name="job" id="job">
								<option selected>선택</option>
								<option value="doctor">의사</option>
								<option value="programmer">프로그래머</option>
								<option value="etc">기타</option>
							</select>
						</div>
					</li>
					<li class="list-group-item">
						<div class="form-check form-check-inline">
							<fieldset>
								<div class="input-group">
	 								<span class="input-group-text">관심사</span>
	 								<span class="checkbox-group">
										<label class="form-check-label">
											<input class="form-check-input" type="checkbox" name="like" value="java" />java
										</label>
										<label class="form-check-label">
											<input class="form-check-input" type="checkbox" name="like" value="javascript" />javascript
										</label>
										<label class="form-check-label">
											<input class="form-check-input" type="checkbox" name="like" value="css" />css
										</label>
									</span>
								</div>
							</fieldset>
						</div>
					</li>
					<li class="list-group-item">
						<div>
							<label><span class="input-group-text">하고 싶은 말</span></label>
						</div>
					</li>
					<li class="list-group-item">
						<textarea name="comment" id="commetn"  rows="3"></textarea>
						<br />
					</li>
					<li class="list-group-item">
						<span class="button-group">
							<button type="submit" class="btn btn-primary">가입</button>
							<button type="reset"  class="btn btn-danger">취소</button>
						</span>
					</li>
				</ul>
			</form>
		</div>
	</body>
</html>