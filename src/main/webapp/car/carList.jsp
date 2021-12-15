<%@page import="com.tesla.vo.CarVO"%>
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
<thead>
<tr>
<th>model_name</th>
<th>선택</th>
</tr>
</thead>

<tbody>

<%
	List<CarVO> list = (List<CarVO>) request.getAttribute("carList");
	for(CarVO vo : list) {
%>

<tr>
<td><%=vo.getModel_name() %></td>
<td><button>변경</button></td>
</tr>

<%
	}
%>

</tbody>


</table>

<div>
<button onclick="location.href='car/carInput.jsp'">신규상품등록</button>
</div>
</body>
</html>