<%@page import="com.tesla.vo.MemberVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<a href="../index.jsp">첫페이지로</a>

<h3>회원목록</h3>
<table border="1">
<thead>
<tr>
<th>아이디</th>
<th>비밀번호</th>
<th>이름</th>
<th>이메일</th>
</tr>

</thead>
<tbody>
<%
	List<MemberVO> list = (List<MemberVO>)request.getAttribute("memberList");
	for(MemberVO vo : list){	
%>
<tr>
<td><%=vo.getId() %></td>
<td><%=vo.getPasswd() %></td>
<td><%=vo.getName() %></td>
<td><%=vo.getMail() %></td>

</tr>


<%
	}
%>
</tbody>
</table>
</body>
</html>