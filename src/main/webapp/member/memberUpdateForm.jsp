<%@page import="com.tesla.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberUpdateForm.jsp</title>
</head>
<style>
a{
font-weight : bolder;
color : black;
text-align : center;
font-size : 25px;
}
.login_id {
  margin-top: 20px;
  width: 80%;
}

.login_id input {
  width: 100%;
  height: 50px;
  border-radius: 30px;
  margin-top: 10px;
  padding: 0px 20px;
  border: 1px solid lightgray;
  outline: none;
}

.login_pw {
  margin-top: 20px;
  width: 80%;
}

.login_pw input {
  width: 100%;
  height: 50px;
  border-radius: 30px;
  margin-top: 10px;
  padding: 0px 20px;
  border: 1px solid lightgray;
  outline: none;
}

.login_name {
  margin-top: 20px;
  width: 80%;
}

.login_name input {
  width: 100%;
  height: 50px;
  border-radius: 30px;
  margin-top: 10px;
  padding: 0px 20px;
  border: 1px solid lightgray;
  outline: none;
}

.login_email {
  margin-top: 20px;
  width: 80%;
}

.login_email input {
  width: 100%;
  height: 50px;
  border-radius: 30px;
  margin-top: 10px;
  padding: 0px 20px;
  border: 1px solid lightgray;
  outline: none;
}

.submit {
  margin-top: 50px;
  width: 80%;
}
.submit input {
  width: 100%;
  height: 50px;
  border: 0;
  outline: none;
  border-radius: 40px;
  background: linear-gradient(to left, rgb(255, 77, 46), rgb(255, 155, 47));
  color: white;
  font-size: 1.2em;
  letter-spacing: 2px;
}
</style>
<body>
<a href="MainPage.jsp">TESLA</a>
<%
MemberVO vo = (MemberVO) request.getAttribute("member");
%>
<form action = 'memberUpdate.do' method = 'post'>
<div class="login_id">
<input type='text' name='id' value='<%=vo.getId() %>' placeholder="ID"><br>
</div>
<div class="login_pw">
<input type='text' name='passwd'value='<%=vo.getPasswd() %>' placeholder="Password"><br>
</div>
<div class="login_name">
<input type='text' name='name'value='<%=vo.getName() %>' placeholder="Name"><br>
</div>
<div class="login_email">
<input type='email' name='mail'value='<%=vo.getMail() %>' placeholder="E-mail"><br>
</div>
<div class="submit">
<input type='submit' value='수정'>
</div>
</form>
</body>
</html>