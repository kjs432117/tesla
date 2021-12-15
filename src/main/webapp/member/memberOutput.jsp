<%@page import="com.tesla.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page errorPage="../error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href='index.jsp'>첫페이지</a>
<%	
	MemberVO vo =(MemberVO)request.getAttribute("member");
%>
<h3>입력한 아이디 : <%=vo.getId() %></h3>
<h3>입력한 이름 : <%=vo.getName() %></h3>
<h3>입력한 비번 : <%=vo.getPasswd() %></h3>
<h3>입력한 이메일 : <%=vo.getMail() %></h3>



</body>
</html>