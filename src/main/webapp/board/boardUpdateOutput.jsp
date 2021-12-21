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
	<a href="board.jsp">목록</a>
	<h3>게시글 수정</h3>
	<table>
			<tr>
				<th>ID</th>
				<td><%=id %></td>
			</tr>
			<tr>
				<th>Title</th>
				<td><%=request.getAttribute("rtitle") %></td>
			</tr>
			<tr>
				<th>Content</th>
				<td><%=request.getAttribute("rcontent") %></td>
			</tr>
			
	</table>
</body>
</html>