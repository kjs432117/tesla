<%@page import="com.tesla.vo.BoardVO"%>
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
	BoardVO vo = (BoardVO) request.getAttribute("num");
%>
	<form action='boardUpdate.do' method='post'>
	Title:<input type='text' name='title' value='<%=vo.getTitle() %>'><br>
	Content:<input type='text' name='content' value='<%=vo.getContent() %>'><br>
	ID:<input type='text' name='id' value='<%=vo.getId() %>'><br>
	<input type='hidden' name='num' value='<%=vo.getNum() %>'>
	<input type='submit' value='수정'>
</body>
</html>