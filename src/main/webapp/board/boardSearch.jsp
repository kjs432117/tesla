<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action='boardSearch.do' method='get'>
		게시글번호: <input type='text' name='num'><br>
		<input type='hidden' name='text' value='search'>
		<input type='submit' value='검색'>
	</form>
	
</body>
</html>