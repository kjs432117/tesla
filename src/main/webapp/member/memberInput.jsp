<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page errorPage="" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력정보</title>
</head>
<body>
<%
	String id = (String)session.getAttribute("id");
	if(id == null){
		%>
		out.println("<script>alert('로그인이 필요합니다');</script>");
		out.println("<script>location.href='../login.jsp';</script>");
<%
	}else{
		
	%>
<h3><%=session.getAttribute("name") %>님,환영합니다.</h3>
<a href="../MainPage2.jsp">첫페이지로</a>
<!-- 입력.jsp -> 컨트롤러 -> 출력.jsp -->
<form action = '../memberInsert.do' method = 'post'>
ID:<input type='text' name='id'><br>
비밀번호:<input type='text' name='passwd'><br>
이름:<input type='text' name='name'><br>
E-mail:<input type='email' name='mail'><br>
<input type='submit' value='가입'>
</form>
<%
	 } 
	%>
</body>
</html>