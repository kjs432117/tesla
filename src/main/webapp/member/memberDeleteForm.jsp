<%@page import="com.tesla.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
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
</head>
<body>
<a href='index.jsp'>첫페이지</a>
<%

MemberVO vo = (MemberVO) request.getAttribute("member");
%>
<form action = 'memberDelete.do' method = 'post'>
<div class="login_id">
ID:<input type='text' name='id' value='<%=vo.getId() %>'><br>
</div>
<div class="submit">
<input type='submit' value='삭제'>
</div>
</form>
</body>
</html>