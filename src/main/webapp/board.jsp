<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
/* ajax data call
data :{
	cmd : select
}
 * var a = document.getelementbyid('#a'); 
 *
 */
 
 $.ajax({
	 method:'post',
	 url: 'BoardListController',
	 data: {
		 cmd: 'boardlist',
	 }
	 dataType: 'json',
	 success: successFnc,
	 error: function(error) {
		 window.alert(`Error: ${error.status}, Message: ${error.statusText}`);
	 }
 });
</script>

</head>
<body>
	<%@ include file="../menu.jsp" %>
	<img alt="" src="">
	<a href="boardList.do">게시판은 숨어버림</a><br>
	
	<input type="text">
	<a href="board/boardInput.jsp">글쓰기</a>
</body>
</html>