package com.tesla.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tesla.service.BoardService;
import com.tesla.vo.BoardVO;

public class BoardSearchController implements Controller {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String num = req.getParameter("num");
		String text = req.getParameter("text");
		System.out.println(num);
		BoardService service = new BoardService();
		
		BoardVO vo = service.searchOne(num);
		req.setAttribute("num", vo);
		
		if(text.equals("search")) {
			req.getRequestDispatcher("board/boardSearchOutput.jsp").forward(req, res);
			
		} else if(text.equals("update")) {
			req.getRequestDispatcher("board/boardUpdateForm.jsp").forward(req, res);
		} else if(text.equals("delete")) {
			req.getRequestDispatcher("board/boardDeleteForm.jsp").forward(req, res);
		}
	}

}
