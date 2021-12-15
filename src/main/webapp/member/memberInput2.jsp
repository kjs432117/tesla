<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<a href="../MainPage2.jsp"style="text-decoration: none">TESLA</a>
<h3>회원가입</h3>
<!-- 입력.jsp -> 컨트롤러 -> 출력.jsp -->
<form action = '../memberInsert.do' method = 'post'>
<div class ="login_id">
ID:<input type='text' name='id'><br>
</div>
<div class ="login_pw">
Password:<input type='text' name='passwd'><br>
</div>
<div class ="login_name">
Name:<input type='text' name='name'><br>
</div>
<div class ="login_email">
E-mail:<input type='email' name='mail'><br>
</div>
<div class="submit">
<input type='submit' value='가입'>
</div>
</form>

</body>
</html>