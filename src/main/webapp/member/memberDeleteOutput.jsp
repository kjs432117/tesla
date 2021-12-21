<%@page import="com.tesla.vo.MemberVO"%>
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
	MemberVO vo = (MemberVO) request.getAttribute("member");
	%>
	<a href='index.jsp'>첫페이지</a>
	<%
	if (vo == null) {
	%>
	<h3>더나은 서비스로 찾아뵙겠습니다!</h3>
	<%
	} else {
	%>
	
	<table>
		<tr>
			<th>회원아이디</th>
			<td><%=(vo.getId())%></td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><%=vo.getPasswd()%></td>
		</tr>
		<tr>
			<th>이름</th>
			<td><%=vo.getName()%></td>
		</tr>
		<tr>
			<th>이메일</th>
			<td><%=vo.getMail()%></td>
		</tr>
	</table>
	<%
	}
	%>
</body>
</html>