<%@page import="com.tesla.vo.BoardVO"%>
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

	<table>
		<tbody>
			<%
				List<BoardVO> list = (List<BoardVO>) request.getAttribute("boardList");
				for(BoardVO vo : list) { 
			%>
				<tr>
					<td><%=vo.getContent() %></td>
					<td><%=vo.getNum() %></td>
					<td><%=vo.getTitle() %></td>
					<td><%=vo.getId() %></td>
					<td><%=vo.getDate() %></td>
				</tr>
			<%
				}
			%>
		</tbody>
	</table>
</body>
</html>