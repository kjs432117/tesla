package com.tesla.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tesla.service.BoardService;
import com.tesla.vo.BoardVO;

public class BoardUpdateController implements Controller {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		String id = req.getParameter("id");
		String num = req.getParameter("num");
		
		
		BoardVO vo = new BoardVO();
		vo.setTitle(title);
		vo.setContent(content);
		vo.setId(id);
		vo.setNum(num);
		
		BoardService service = new BoardService();
		service.update(vo);
		System.out.println(vo);
		
		req.setAttribute("rid", id);
		req.setAttribute("rtitle", title);
		req.setAttribute("rcontent", content);
		
		req.getRequestDispatcher("board/boardUpdateOutput.jsp").forward(req, res);
	}

}
