<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../menu2.jsp"></jsp:include>
	<img alt="" src="">
	<form action='../boardInsert.do' method='post'>
		<%-- <%= session.getAttribute("memid") %> --%>
		
		아이디: <input type='text' name='board_id'><br>
		제목: <input type='text' name='board_title'><br>
		내용: <input type='text' name='board_content'>
		
		<input type='submit' value='등록하기'> 
	</form>
</body>
</html>