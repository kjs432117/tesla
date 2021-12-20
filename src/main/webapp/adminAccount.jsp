<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#account{
 height : 500px; 
 background-color : #9BCDC4;

}
 ul li{
 list-style-type : none;
 font-weight : border;
 font-size : 1.5em;
 font-style: italic;
 
 }
</style>
</head>
<body>
	<div id ="account">
	<h2>MENU01</h2>
	<ul>
	<li><a href='memberList.do'style="text-decoration: none">회원목록</a><br></li> <!-- carList -->
	<li><a href='member/memberSearch.jsp'style="text-decoration: none">회원조회</a><br></li> <!-- 회원검색 하는거를 car로바꿔서 사용 -->
	<li><a href='member/memberUpdate.jsp'style="text-decoration: none">회원정보수정</a><br></li><!-- 이건새로만들어야함 -->
	<li><a href='member/memberDelete.jsp'style="text-decoration: none">회원탈퇴</a><br></li>
	</ul>
	</div>
</body>
</html>