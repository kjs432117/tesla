<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberUpdate.jsp</title>
<style>
a{
font-weight: bolder;
color : black;
font-size : 30px;

}
h3{
font-weight: bolder;

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
<h3>아이디검색</h3>
<form action='../memberSearch.do' method='get'>
<div class="login_id">
<input type='text' name='id' placeholder="ID"><br>
</div>
<input type='hidden' name='job' value='update'>
<div class="submit">
<input type='submit' value='검색'>
</div>
</form>
</body>
</html>