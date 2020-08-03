<%@page import="java.util.ArrayList"%>
<%@page import="test.file.dto.FileDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
//지금은 한페이지에서 작업을하지만 여기있는 부분은 서블릿에서 수행한다
	List<FileDto> list=new ArrayList<>();
	FileDto dto1=new FileDto();
	dto1.setNum(1);
	dto1.setWriter("김구라");
	dto1.setTitle("제목1");
	FileDto dto2=new FileDto();
	dto2.setNum(2);
	dto2.setWriter("황경욱");
	dto2.setTitle("제목2");
	FileDto dto3=new FileDto();
	dto3.setNum(3);
	dto3.setWriter("만드기");
	dto3.setTitle("제목3");
	list.add(dto1);
	list.add(dto2);
	list.add(dto3);
	
	
	// El로 추출할 수 있도록 request 영역에 담는다.
	request.setAttribute("list", list);
	//DB 칼럼에 저장된 문자열을 구분자를 이용해서 한번에 담음
	String hobby="piano/game/reading";
	request.setAttribute("hobby", hobby);

%>
<!-- servlet에서 포워드 이동시켜 jsp에서 값을 사용하여 응답할때는
	사용한은 키값이 어떤 타입 인지를 인지 하고 있어야한다.
 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>List에 들어 있는 Dto 활용 </h1>
	<table>
		<tr>
			<th>번호</th>
			<th>작성자</th>
			<th>제목</th>
		</tr>
		<tbody>
			
				<c:forEach var="tmp" items="${list}">
					<tr>
						<td>${tmp.num}</td>
						<td>${tmp.writer}</td>
						<td>${tmp.title}</td>
					</tr>
				</c:forEach>		
			
		</tbody>
	</table>
<%--forTokens는 delims로 구분한 문자열을 하나하나씩 가져온다 --%>
<h1>취미입니다</h1>
<ul>
	<c:forTokens items="tmp" items="${hobby }" delims="/">
		<li>${tmp}</li>
	</c:forTokens>
</ul>
</body>
</html>