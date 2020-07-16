<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	 <%
	 	String nick=(String)session.getAttribute("nick");
	 %>
<p><strong><%=nick %></strong>님이 입장했습니다.</p>
<a href="../index.jsp">인덱스로돌아가기</a>

</body>
</html>