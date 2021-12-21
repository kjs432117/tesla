<%@page import="com.tesla.vo.BoardVO"%>
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
	BoardVO vo = (BoardVO) request.getAttribute("num");
%>
	<table>
			<tr>
				<td><%=vo.getTitle() %></td>
			</tr>
			<tr>
				<td><%=vo.getContent() %></td>
			</tr>
			<tr>
				<td><%=vo.getNum() %></td>
			</tr>
			<tr>
				<td><%=vo.getId() %></td>
			</tr>
			<tr>
				<td><%=vo.getDate() %></td>
			</tr>
		</table>
		
		<a href='boardSearch.do?text=update&num=<%=vo.getNum()%>'>수정</a>
		<a href='boardSearch.do?text=delete&num=<%=vo.getNum()%>'>삭제</a>
</body>
</html>