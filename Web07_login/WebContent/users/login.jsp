<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/bootstrap.min.css" />
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String url=request.getParameter("url");
	if(url==null){
		String cPath=request.getContextPath();
		url=cPath+"/index.jsp";//로그인 후 인덱스 페이지로 가도록 하기 위해
	}
%>
	<div class="container" style="width:400px">
		<h1>Log-In</h1>
		<form action="login_action.jsp">
		<%-- 원래 가려던 목적지 정보를 url 이라는 파라미터 명으로 가지고 간다. --%>
			<input type="hidden" name="url" value="<%=url%>" />
			<div class="form-group">
				<label for="id">아이디</label>
				<input type="text" name="id" id="id" class="form-control"/>
			</div>
			<div class="form-group">
				<label for="pwd">비밀번호</label>
				<input type="text" name="pwd" id="pwd" class="form-control" />
			</div>
			<button type="submit">로그인</button>
		</form>
	</div>	
</body>
</html>