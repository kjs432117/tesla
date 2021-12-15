package com.tesla.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tesla.dao.BoardDAO;
import com.tesla.service.BoardService;
import com.tesla.vo.BoardVO;

@WebServlet("/BoardListController")
public class BoardListController extends HttpServlet implements Controller {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		/*
		 * String cmd = req.getParameter("cmd");
		 * 
		 * JSONObject obj = new JSONObject(); BoardDAO dao = new BoardDAO(); try {
		 * 
		 * 
		 * } catch(Exception e) {
		 * 
		 * }
		 */
		
		BoardService service = new BoardService();
		List<BoardVO> list = service.boardAll();
		
		req.setAttribute("boardList", list);
		
		req.getRequestDispatcher("board/boardList.jsp").forward(req, res);
	}
	
}
