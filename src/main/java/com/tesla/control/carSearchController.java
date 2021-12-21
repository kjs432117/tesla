package com.tesla.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tesla.service.CarService;
import com.tesla.vo.CarVO;

public class carSearchController implements Controller {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String model_name = req.getParameter("model_name");
		
		String job = req.getParameter("job");

		CarService service = new CarService();
		CarVO vo = service.searchOne(model_name);
		req.setAttribute("car", vo);
		
		try {
			
			if (job.equals("model")) {
			System.out.println(req);
			req.getRequestDispatcher("car/carModel.jsp").forward(req, res);
					
			} else if (job.equals("update")) {
			System.out.println(req);
			req.getRequestDispatcher("car/carUpdate.jsp").forward(req, res);
			} else if (job.equals("order")) {
			System.out.println(req);
			req.getRequestDispatcher("car/carOrder.jsp").forward(req, res);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		
		
	}

}
