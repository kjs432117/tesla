<%@page import="com.tesla.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberUpdateForm.jsp</title>
</head>
<body>
<a href="index.jsp">홈으로</a>
<%

MemberVO vo = (MemberVO) request.getAttribute("member");
%>
<form action = 'memberUpdate.do' method = 'post'>
ID:<input type='text' name='id' value='<%=vo.getId() %>'><br>
비밀번호재설정:<input type='text' name='passwd'value='<%=vo.getPasswd() %>'><br>
이름:<input type='text' name='name'value='<%=vo.getName() %>'><br>
E-mail:<input type='email' name='mail'value='<%=vo.getMail() %>'><br>
<input type='submit' value='수정'>
</form>
</body>
</html>