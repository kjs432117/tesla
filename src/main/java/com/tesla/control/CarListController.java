package com.tesla.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.tesla.dao.CarDAO;
import com.tesla.service.CarService;
import com.tesla.vo.CarVO;

public class CarListController implements Controller {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		CarService service = new CarService();
		
		JsonObject obj = new JsonObject();
		
		
		CarDAO dao = new CarDAO();
		
		try {
			List<CarVO> list = service.searchAll();
			JsonArray ary = new JsonArray();
			
			for(CarVO vo : list) {
				JsonObject ino = new JsonObject();
				
				ino.addProperty("model_name", vo.getModel_name());
				
				ary.add(ino);
			}
			
			obj.addProperty("retCode", "Success");
			obj.add("retVal", ary);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			obj.addProperty("retCode", "Fail");
			obj.addProperty("retVal", e.getMessage());
		}
		
		res.getWriter().print(obj.toString());
		
			
			
		}
		
//		req.setAttribute("carList", list);
//		req.getRequestDispatcher("car/carList.jsp").forward(req, res);
//
//	}
	
	

}
