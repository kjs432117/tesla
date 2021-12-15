package com.tesla.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tesla.service.CarService;
import com.tesla.vo.CarVO;

public class CarListController implements Controller {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		CarService service = new CarService();
		List<CarVO> list = service.searchAll();
		
		req.setAttribute("carList", list);
		req.getRequestDispatcher("car/carList.jsp").forward(req, res);

	}

}
