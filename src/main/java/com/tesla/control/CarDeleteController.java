package com.tesla.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonObject;
import com.tesla.dao.CarDAO;

public class CarDeleteController implements Controller {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub

		
		
		String model_name = req.getParameter("model_name");
		
		CarDAO dao = new CarDAO();
		JsonObject obj = new JsonObject();
		
		try {
			
			dao.carDelete(model_name);
			System.out.println(model_name);
			obj.addProperty("retCode", "Success");
			obj.addProperty("retVal", model_name);
						
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			obj.addProperty("retCode", "Fail");
			obj.addProperty("retVal", e.getMessage());
		}
		
		res.getWriter().print(obj.toString());
		
		
	}

}
