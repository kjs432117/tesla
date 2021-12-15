<%@page import="com.tesla.vo.CarVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>





<script>
function go() {
	location = "../Tesla/index.jsp"
}
</script>
</head>
<body onLoad="setTimeout('go()', 1000)">
<%
	CarVO vo = (CarVO) request.getAttribute("car");
%>

<h3><%=vo.getModel_name() %> 등록 완료</h3>
</body>
</html>