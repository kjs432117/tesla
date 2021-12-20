<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberSearch.jsp</title>
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
	<%
      String id = (String)session.getAttribute("id");
      if(id==null){%>
         Response.Write("<script>alert('로그인이 필요합니다.');</script>");
         Response.Write("<script>location.href='../login.jsp';</script>");
         
       <% }else{
	%>

	<h3>회원검색</h3>
	<form action='../memberSearch.do' method='get'>
		<div class = "login_id">
		ID:<input type='text' name='id'><br> 
		</div>
		<input type='hidden' name='job' value='search'> 
		<div class= "submit">
		<input type='submit' value='검색'>
		</div>
	</form>

	<%
	}
	%>
</body>
</html>