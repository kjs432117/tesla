<%@page import="com.tesla.vo.CarVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>carUpdate.jsp</title>
</head>
<body>
<%
	CarVO vo = (CarVO) request.getAttribute("car");
%>

	<a href="index.jsp">HOME</a>

  <h3>상품 수정(상품이름과 가격은 필수입니다!!)</h3>
    <form action='carUpdate.do' method='post'>
		MODEL_NAME: <input type='text' name='model_name' value='<%=vo.getModel_name()  %>'><br> 
		MODEL_PIC1: <input type='text' name='model_pic1' value='<%=vo.getModel_pic1()  %>'><br> 
		MODEL_PIC2: <input type='text' name='model_pic2' value='<%=vo.getModel_pic2()  %>'><br> 
		MODEL_PIC3: <input type='text' name='model_pic3' value='<%=vo.getModel_pic3()  %>'><br> 
		MODEL_PIC4: <input type='text' name='model_pic4' value='<%=vo.getModel_pic4()  %>'><br> 
		MODEL_PIC_COLOR1: <input type='text' name='model_pic_color1' value='<%=vo.getModel_pic_color1()  %>'><br> 
		MODEL_PIC_COLOR2: <input type='text' name='model_pic_color2' value='<%=vo.getModel_pic_color2()  %>'><br> 
		MODEL_PIC_COLOR3: <input type='text' name='model_pic_color3' value='<%=vo.getModel_pic_color3()  %>'><br> 
		MODEL_PIC2_COLOR1: <input type='text' name='model_pic2_color1' value='<%=vo.getModel_pic2_color1()  %>'><br> 
		MODEL_PIC2_COLOR2: <input type='text' name='model_pic2_color2' value='<%=vo.getModel_pic2_color2()  %>'><br> 
		MODEL_PIC2_COLOR3: <input type='text' name='model_pic2_color3' value='<%=vo.getModel_pic2_color3()  %>'><br> 
		OPTION_PRICE_COLOR1: <input type='number' name='option_price_color1' value='<%=vo.getOption_price_color1()  %>'><br> 
		OPTION_PRICE_COLOR2: <input type='number' name='option_price_color2' value='<%=vo.getOption_price_color2()  %>'><br> 
		OPTION_PRICE_COLOR3: <input type='number' name='option_price_color3' value='<%=vo.getOption_price_color3()  %>'><br> 
		DRIVING_SYSTEM1: <input type='text' name='driving_system1' value='<%=vo.getDriving_system1()  %>'><br> 
		MAX_RANGE1: <input type='text' name='max_range1' value='<%=vo.getMax_range1()  %>'><br> 
		TOP_SPEED1: <input type='text' name='top_speed1' value='<%=vo.getTop_speed1()  %>'><br> 
		ZEROTOSIXTY1: <input type='text' name='zerotosixty1' value='<%=vo.getZerotosixty1()  %>'><br> 
		PRICE1: <input type='number' name='price1' value='<%=vo.getPrice1()  %>'><br> 
		DRIVING_SYSTEM2: <input type='text' name='driving_system2' value='<%=vo.getDriving_system2()  %>'><br> 
		MAX_RANGE2: <input type='text' name='max_range2' value='<%=vo.getMax_range2()  %>'><br> 
		TOP_SPEED2: <input type='text' name='top_speed2' value='<%=vo.getTop_speed2()  %>'><br> 
		ZEROTOSIXTY2: <input type='text' name='zerotosixty2' value='<%=vo.getZerotosixty2()  %>'><br> 
		PRICE2: <input type='number' name='price2' value='<%=vo.getPrice2()  %>'><br> 
		FEATURE1: <input type='text' name='feature1' value='<%=vo.getFeature1()  %>'><br> 
		FEATURE_PIC1: <input type='text' name='feature_pic1' value='<%=vo.getFeature_pic1()  %>'><br> 
		FEATURE2: <input type='text' name='feature2' value='<%=vo.getFeature2()  %>'><br> 
		FEATURE_PIC2: <input type='text' name='feature_pic2' value='<%=vo.getFeature_pic2()  %>'><br> 
		FEATURE3: <input type='text' name='feature3' value='<%=vo.getFeature3()  %>'><br> 
		FEATURE_PIC3: <input type='text' name='feature_pic3' value='<%=vo.getFeature_pic3()  %>'><br> 
		ADD_OPTION1: <input type='text' name='add_option1' value='<%=vo.getAdd_option1()  %>'><br> 
		ADD_PRICE_OPTION1: <input type='number' name='add_price_option1' value='<%=vo.getAdd_price_option1()  %>'><br> 
		ADD_OPTION2: <input type='text' name='add_option2' value='<%=vo.getAdd_option2()  %>'><br> 
		ADD_PRICE_OPTION2: <input type='number' name='add_price_option2' value='<%=vo.getAdd_price_option2()  %>'><br> 
        <input type='submit' value='수정'>
    </form>


</body>
</html>