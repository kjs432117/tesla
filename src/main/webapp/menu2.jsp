<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
ul{
list-style-type : none;
text-align : center;
}

li{
display : inline-block;
width : 100px;
font-weight: bolder;

border-radius: 35%;
margin : 15px;
padding-bottom: 10px;

}
</style>
</head>
<body>
<ul>
	<li><a href="MainPage2.jsp"style="text-decoration: none">TESLA</a></li>
	
	<li><a href="carSearch.do?model_name=Model+S&job=model" style="text-decoration: none">Model S</a></li>
	<li><a href='<%=request.getContextPath()%>/member/memberSearch.jsp'style="text-decoration: none">Model 3</a></li>
	<li><a href='<%=request.getContextPath()%>/member/memberUpdate.jsp'style="text-decoration: none">Model X</a></li>
	<li><a href='<%=request.getContextPath()%>/member/memberUpdate.jsp'style="text-decoration: none">Model Y</a></li>
	<li><a href='<%=request.getContextPath()%>/member/memberUpdate.jsp'style="text-decoration: none">Cybertruck</a></li>
	<li><a href="logout.do"style="text-decoration: none">로그아웃</a><br></li>
	</ul>
</body>
</html>