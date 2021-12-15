<%@page import="com.tesla.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>회원삭제</h3>
<form action='../memberSearch.do' method='get'>
ID:<input type='text' name='id'><br>
<input type='hidden' name='job' value='delete'>
<input type='submit' value='검색'>
</form>
</body>
</html>