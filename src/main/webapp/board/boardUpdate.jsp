<%@page import="com.tesla.vo.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>

	function updateFnc() {
		var div = $('<div>');
		var a = $('<a></a>');
		$(div).attr('num', list.num);
		$(a).attr('href', 'boardSearch.do?text=update&num=4');
	}
</script>
</head>
<body>
	<form action='../boardSearch.do' method='get'>
		게시글번호:<input type='text' name='num'><br>
		<input type='hidden' name='text' value='update'>
		<input type='submit' value='검색'>
	</form>
</form>
</body>
</html>