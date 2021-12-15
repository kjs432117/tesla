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
<a href='index.jsp'>첫페이지</a>
<%

MemberVO vo = (MemberVO) request.getAttribute("member");
%>
<form action = 'memberDelete.do' method = 'post'>
ID:<input type='text' name='id' value='<%=vo.getId() %>'><br>
<input type='submit' value='삭제'>
</form>
</body>
</html>