<%@page import="test.file.dto.FileDto"%>
<%@page import="java.io.File"%>
<%@page import="test.file.dao.FileDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userid=(String)session.getAttribute("id");
	//파라미터로 전달되는 삭제할 파일 번호 읽어온다	
	int num=Integer.parseInt(request.getParameter("num"));
	//db에서 해당 파일 정보 읽어온다.
	
	FileDto dto=FileDao.getInstance().getData(num);
	//파일 시스템에서 파일을 삭제한다.
	//주소창을 통해 삭제 할 수 있기때문에 
	//글작성자와 로그인 된아이디를 비교해준다
	if(!dto.getWriter().equals(userid)){
		//같지 않으면 
		response.sendError(HttpServletResponse.SC_FORBIDDEN,"이상한 짓 하지마라");
		return;
	}

	String path=application.getRealPath("/upload")
			+File.separator+dto.getSaveFileName();
	new File(path).delete();
	//db에서 해당 파일의 정보를 삭제한다.
	boolean isDelete=FileDao.getInstance().delete(num);
	

	//응답
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
	alert("삭제되었습니다");
	location.href="../list.jsp";
</script>
</body>
</html>