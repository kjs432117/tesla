package com.tesla.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tesla.service.CarService;
import com.tesla.vo.CarVO;

public class CarInputController implements Controller {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String model_name = req.getParameter("model_name");
		String model_pic1 = req.getParameter("model_pic1");
		String model_pic2 = req.getParameter("model_pic2");
		String model_pic3 = req.getParameter("model_pic3");
		String model_pic4 = req.getParameter("model_pic4");
		String model_pic_color1 = req.getParameter("model_pic_color1");
		String model_pic_color2 = req.getParameter("model_pic_color2");
		String model_pic_color3 = req.getParameter("model_pic_color3");
		String model_pic2_color1 = req.getParameter("model_pic2_color1");
		String model_pic2_color2 = req.getParameter("model_pic2_color2");
		String model_pic2_color3 = req.getParameter("model_pic2_color3");
		String option_price_color1 = req.getParameter("option_price_color1");//
		String option_price_color2 = req.getParameter("option_price_color2");//
		String option_price_color3 = req.getParameter("option_price_color3");//
		String driving_system1 = req.getParameter("driving_system1");
		String max_range1 = req.getParameter("max_range1");
		String top_speed1 = req.getParameter("top_speed1");
		String zerotosixty1 = req.getParameter("zerotosixty1");
		String price1 = req.getParameter("price1");//
		String driving_system2 = req.getParameter("driving_system2");
		String max_range2 = req.getParameter("max_range2");
		String top_speed2 = req.getParameter("top_speed2");
		String zerotosixty2 = req.getParameter("zerotosixty2");
		String price2 = req.getParameter("price2");//
		String feature1 = req.getParameter("feature1");
		String feature_pic1 = req.getParameter("feature_pic1");
		String feature2 = req.getParameter("feature2");
		String feature_pic2 = req.getParameter("feature_pic2");
		String feature3 = req.getParameter("feature3");
		String feature_pic3 = req.getParameter("feature_pic3");
		String add_option1 = req.getParameter("add_option1");
		String add_price_option1 = req.getParameter("add_price_option1");//
		String add_option2 = req.getParameter("add_option2");
		String add_price_option2 = req.getParameter("add_price_option2");//
		
		CarVO vo = new CarVO();
		
		vo.setModel_name(model_name);
		vo.setModel_pic1(model_pic1);
		vo.setModel_pic2(model_pic2);
		vo.setModel_pic3(model_pic3);
		vo.setModel_pic4(model_pic4);
		vo.setModel_pic_color1(model_pic_color1);
		vo.setModel_pic_color2(model_pic_color2);
		vo.setModel_pic_color3(model_pic_color3);
		vo.setModel_pic2_color1(model_pic2_color1);
		vo.setModel_pic2_color2(model_pic2_color2);
		vo.setModel_pic2_color3(model_pic2_color3);
		vo.setOption_price_color1(option_price_color1);
		vo.setOption_price_color2(option_price_color2);
		vo.setOption_price_color3(option_price_color3);
		vo.setDriving_system1(driving_system1);
		vo.setMax_range1(max_range1);
		vo.setTop_speed1(top_speed1);
		vo.setZerotosixty1(zerotosixty1);
		vo.setPrice1(price1);
		vo.setDriving_system2(driving_system2);
		vo.setMax_range2(max_range2);
		vo.setTop_speed2(top_speed2);
		vo.setZerotosixty2(zerotosixty2);
		vo.setPrice2(price2);
		vo.setFeature1(feature1);
		vo.setFeature_pic1(feature_pic1);
		vo.setFeature2(feature2);
		vo.setFeature_pic2(feature_pic2);
		vo.setFeature3(feature3);
		vo.setFeature_pic3(feature_pic3);
		vo.setAdd_option1(add_option1);
		vo.setAdd_price_option1(add_price_option1);
		vo.setAdd_option2(add_option2);
		vo.setAdd_price_option2(add_price_option2);
		
		CarService service = new CarService();
		service.Input(vo);
		
		req.setAttribute("car", vo);
		
		req.getRequestDispatcher("car/carInputResult.jsp").forward(req, res);
		

	}

}
