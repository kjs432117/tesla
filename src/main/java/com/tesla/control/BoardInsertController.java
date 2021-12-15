package com.tesla.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tesla.service.BoardService;
import com.tesla.vo.BoardVO;

public class BoardInsertController implements Controller {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String content = req.getParameter("board_content");
		int num = Integer.parseInt(req.getParameter("board_num")); //ÆÄ½Ì
		String id = req.getParameter("board_id");
		String date = req.getParameter("board_date");
		String title = req.getParameter("board_title");
		
		
		BoardVO vo = new BoardVO();
		vo.setContent(content);
		vo.setNum(num);
		vo.setId(id);
		vo.setDate(date);
		vo.setTitle(title);
		
		BoardService service = new BoardService();
		
		service.insert(vo);
		req.setAttribute("board", vo);
		req.getRequestDispatcher("board/boardOutput.jsp").forward(req, res);
		
	}

}
