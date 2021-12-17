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

<a href="../MainPage2.jsp">TESLA</a>
<!-- 입력.jsp -> 컨트롤러 -> 출력.jsp -->
<form action = '../memberInsert.do' method = 'post'> <!-- 여기 carInsert 로 바꿔주고 -->
ID:<input type='text' name='id'><br>
비밀번호:<input type='text' name='passwd'><br>  <!-- 4개는 다 carDAO 에연결될수있도록  -->
이름:<input type='text' name='name'><br>
E-mail:<input type='email' name='mail'><br>
<input type='submit' value='가입'>
</form>
<%
	 } 
	%>
</body>
</html>