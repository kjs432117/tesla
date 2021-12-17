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
<style>
h3{
text-align : center;
font-weight : bolder;
}
</style>
<body>
<a href='index.jsp'>첫페이지</a>
<%	
	MemberVO vo =(MemberVO)request.getAttribute("member");
%>
<h3><%=vo.getId() %>님 회원가입 감사합니다!!</h3>

</body>
</html>