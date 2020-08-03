<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id="";
	//아이디값을 저장할 변수
	String pwd="";
	//비밀번호를 저장할 변수 
	Cookie [] cook=request.getCookies();
	//데이터 타입이 쿠키인 변수를 만들어 서버측에 쿠키를 요청한다.
	if(cook!=null){
		//배열의 값이 null이 아닐경우 
		for(Cookie tmp:cook){
			String cid=tmp.getName();
			if(cid.equals("id")){
				id=tmp.getValue();
			}
			String cpwd=tmp.getName();
			if(cpwd.equals("pwd")){
				pwd=tmp.getValue();
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>
		클라이언트의 웹브라우저에 특정 key값으로 문자열을 저장할 수 있다.
		저장할 수 있는 문자여은 base64 인코딩 형식의 64가지 문자열을 저장할 수 있다.	
	</p>
	
		<form action="login_cookieSave.jsp" method="get">
			<label for="id">아이디</label>
			<input type="text" name= "id" id="id" value="<%=id%>"/>
			<label for="pwd">비밀번호 </label>
			<input type="password" name= "pwd" id="pwd" value="<%=pwd%>"/>
			<input type="checkbox" name="isSaved" value="yes" />
			<button type="submit">저장</button>	
		</form>
		<a href="../index.jsp">인덱스로</a>
</body>
</html>