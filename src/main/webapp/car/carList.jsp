<%@page import="com.tesla.vo.CarVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js">
</script>

<script>
	$(document).ready(onreadyFnc);
	
	
	function onreadyFnc() {
		$.ajax({
			url: '../carList.do',
			method: 'post',
			dataType:'json',
			success: loadCarList,
			error: function(error) {
				console.log(error);
				window.alert(`Error: ${error.status}, Message: ${error.statusText}`);
			}
		});
	}
	
	//성공시 가져오는 콜백함수
	function loadCarList(result){
		console.log(result);
		if(result.retCode =='Success') {
			var data = result.retVal;
			console.log(data);
			data.forEach(item => {
				
				$('#carLists').append(makeListView(item));	
			});
			
			
			
			
		}else {
			window.alert(result.retVal);
		}
	}
	
	//data 한건 가져와서 출력.
	function makeListView(car) {
		
		var div = $('<div>');
		
		$(div).attr('id',car.model_name);
	
		$(div).data('carName',car.model_name);
		
		//
		$(div).addClass('cars');
		
		$(div).append(//
				$('<strong>').text(car.model_name),
					
				$('<input>').attr('type','button').val('수정').click(updateFnc),
				$('<input>').attr('type','button').val('삭제').click(deleteFnc)
				
		);
						
		return div;
	}
	
	
	
	function updateFnc(e) {
		var model_name = $(e.target.parentNode).attr('id');
		console.log(model_name);
		$('#update').empty();
		$('#update').append(
			$('<input>').attr({type:'hidden',name:'model_name'}).val(model_name)
		);
		$('#update').append(
			$('<input>').attr({type:'hidden',name:'job'}).val('update')
		);
 		
		document.update.submit();

	
	}
	
			/* 
			success: updateGo,
			error: function(error) {
				console.log(error);
				window.alert(`Error: ${error.status}, Message: ${error.statusText}`);
			}
		});
	}
	
	function updateGo(result) {
		
	}
 */
	
	
	
	function deleteFnc(e) {
	
	
	
		if(confirm('삭제하시겠습니까?')) {
			var model_name = $(e.target.parentNode).attr('id');
			$.ajax({
				url: '../carDelete.do',
				method:'post',
				data:{
					model_name: model_name
				},
				dataType: 'json',
				success: function(result) {
					alert(`model_name: ${result.retVal} 삭제되었습니다!!`);
					$('#' + model_name).remove();

				},
				error: function(error) {
					console.log(error);
					alert('삭제 처리 중 에러 발생했습니다.');

				}
				
			});
			
		}
		
	}
	
	
</script>

</head>
<body>

	<div id="carLists"></div>
	
	<div>
<button onclick="location.href='carInput.jsp'">신규상품등록</button>
</div>

<form id = 'update' action = '../carSearch.do' method = 'post' name = 'update'>


</form>
	
<%-- 
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

%>
<%
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
	

 --%>
 
 
</body>
</html>