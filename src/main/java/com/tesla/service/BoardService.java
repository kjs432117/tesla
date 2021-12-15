package com.tesla.service;

import java.util.List;

import com.tesla.dao.BoardDAO;
import com.tesla.vo.BoardVO;

public class BoardService {
	BoardDAO dao = new BoardDAO();
	
	//전제조회
	public List<BoardVO> boardAll() {
		return dao.boardList();
	}
	
	//입력
	public BoardVO insert(BoardVO vo) {
		return dao.boardInsert(vo);
	}
}
