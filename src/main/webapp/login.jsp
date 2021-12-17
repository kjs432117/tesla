<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
form{
text-align : center;
display : flex;
align-items : center;
justify-content : center;
flex-direction : column;
outline : none;
background : linear-gradient();
border-radius: --px;
box-shadow: -px -px -px color;
letter-spacing: 2px;
}

</style>
<link rel="stylesheet" href="./login3.css">
</head>
<body>

<jsp:include page="menu.jsp"></jsp:include>

<form action='login.do' method='post'class="loginForm">
<div class="login_id">
<input type='text' name='id' placeholder="ID"><br>
</div>
<div class="login_pw">
<input type='password' name='passwd'placeholder="Password"><br>
</div>

<div class="submit">
<input type='submit' value='Login'>
</div>

	<ul>	
	<li><a href='<%=request.getContextPath()%>/member/memberUpdate.jsp'>비밀번호를 잊으셨나요?</a></li>
	<li>또는<br></li>
	<li><a href='<%=request.getContextPath()%>/member/memberInput2.jsp'>회원가입</a></li>
	</ul>	
	
</form>
</body>
</html>