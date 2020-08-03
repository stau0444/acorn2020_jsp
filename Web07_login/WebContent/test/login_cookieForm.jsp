<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie [] cook=request.getCookies();
	String id= null;
	String pwd=null;
	if(cook!=null){
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
	<form action="cookie_save.jsp" method="get">
		<label for="id">웹브라우저(client side)에 저장할 문자열 </label>
		<input type="text" name= "id" id="id" placeholder="<%=id%>"/>
		<label for="pwd">웹브라우저(client side)에 저장할 문자열 </label>
		<input type="text" name= "pwd" id="pwd" placeholder="<%=pwd%>"/>
		<button type="submit">저장</button>
	</form>
</body>
</html>