package com.tesla.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.tesla.dao.BoardDAO;
import com.tesla.service.BoardService;


public class BoardDeleteController implements Controller {
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String num = req.getParameter("num");
		System.out.println(num);
		BoardService service = new BoardService();
		service.delete(num);
		req.getRequestDispatcher("board.jsp").forward(req, res);
	}
	
}
