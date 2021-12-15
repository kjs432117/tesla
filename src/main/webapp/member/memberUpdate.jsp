<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberUpdate.jsp</title>
<style>
h3{

}
</style>
</head>
<body>
<a href="../MainPage.jsp">Tesla</a>
<h3>아이디검색</h3>
<form action='../memberSearch.do' method='get'>
ID:<input type='text' name='id'><br>
<input type='hidden' name='job' value='update'>
<input type='submit' value='검색'>
</form>
</body>
</html>