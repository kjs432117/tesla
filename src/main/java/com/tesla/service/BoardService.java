package com.tesla.service;

import java.util.List;


import com.tesla.dao.BoardDAO;
import com.tesla.vo.BoardVO;

public class BoardService {
	BoardDAO dao = new BoardDAO();
	
	
	public List<BoardVO> boardAll() {
		return dao.boardList();
	}
	
	public BoardVO insert(BoardVO vo) {
		return dao.boardInsert(vo);
	}
	
	public BoardVO searchOne(String num) {
		return dao.boardSearch(num);
	}
	
	public BoardVO update(BoardVO vo) {
		return dao.boardUpdate(vo);
	}
	
	public BoardVO delete(String num) {
		return dao.boardDelete(num);
	}
}
