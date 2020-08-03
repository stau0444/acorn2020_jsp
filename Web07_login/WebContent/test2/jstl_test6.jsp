<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%
	//텍스트area에서 전송된 내용을 가져온다. 개행기호 (\n)이 포함되 있을 수도 있다.
	String content=request.getParameter("content");
	//sample data(DB에서 불러온 데이터라고 가정)을 request 영역에 담아준다.
	request.setAttribute("content", content);
	
	pageContext.setAttribute("newLine", "\n");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>${fn:replace(content,newLine,"<br/>")}</p>
</body>
</html>