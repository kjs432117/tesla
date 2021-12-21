<%@page import="com.tesla.vo.BoardVO"%>
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
	<%
	BoardVO vo = (BoardVO) request.getAttribute("num");
	%>
	$(document).ready(onreadyFnc);
	function onreadyFnc() {
 		$.ajax({
	 		method:'get',
	 		url: 'boardList.do',
	 		dataType: 'json',
	 		success: successFnc,
	 		error: function(error) {
		 		window.alert(`Error: ${error.status}, Message: ${error.statusText}`);
	 		}
 		});
	}
	
	function successFnc(result) {
		if(result.retCode == 'Success') {
			var data = result.retVal;
			data.forEach(item => {
				$('#list').append(makeListView(item));
			});
			
		} else {
			window.alert(result.retVal);
		}
	}
	
	function makeListView(list) {
		var div = $('<div>');
		var a = $('<a>11</a>');
		$(div).attr('id', list.title);
		$(a).attr('href', 'boardSearch.do?text=search&num='+list.num+''); 
		$(a).text(list.content);
		
		$(div).data('list', list.title);
		$(div).data('list', list.content);
		$(div).data('list', list.num);
		$(div).data('list', list.id);
		$(div).data('list', list.date);
		
		
		$(div).addClass('boardlist');
		$(div).append(a);
		$(div).append(
			' ' + list.title + ' ' + list.content + ' ' + list.num + ' ' + list.id + ' ' + list.date
			/* $('<input>').attr('type', 'button').val('삭제하기').click(confirmDeletion) */
		);
		return div;
	}
	
	/* function confirmDeletion(e) {
		var listnum = $(e.target.parentNode).attr('num');
		
		console.log($(e.target.parentNode));
		$.ajax({
			url: 'boardDelete.do',
			method: 'post',
			data: {
				num: listnum,
				cmd: 'delete'
			},

			success: function(result) {
			
				$('#' + listnum).remove();
			},
			error: function(error) {
				console.log(error);
				alert('삭제 처리 중 에러가 발생했습니다.');
			}
		});
	} */
	
	function boardInputFnc() {
		location.href = "board/boardInput.jsp";
	}
	
	
</script>

</head>
<body>
	<jsp:include page="menu2.jsp"></jsp:include>
	<img alt="" src="">
	
	<div id="list"></div>
	
	<form action='boardSearch.do' method='get'>
		게시글번호: <input type='text' name='num'><br>
		<input type='hidden' name='text' value='search'>
		<input type='submit' value='검색'>
	</form>
	<!-- <a href='board/boardSearch.jsp'>검색</a> -->
	
	
	<button type="button" onclick="boardInputFnc();">글쓰기</button>
</body>
</html>