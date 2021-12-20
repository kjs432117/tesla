<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id = (String) request.getAttribute("rid");
	
%>

<a href='MainPage.jsp'>첫 페이지</a>
<h3>수정 완료 되었습니다!</h3>
<table>
		<tr class="login_id">
			<th>회원아이디</th>
			<td><%=id%></td>
		</tr>
		<tr  class="login_pw">
			<th>비밀번호</th>
			<td><%=request.getAttribute("rpass")%></td>
		</tr>
		<tr  class="login_name">
			<th>이름</th>
			<td><%=request.getAttribute("rname")%></td>
		</tr>
		<tr  class="login_email">
			<th>이메일</th>
			<td><%=request.getAttribute("rmail")%></td>
		</tr>
	</table>
</body>
</html>