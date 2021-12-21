package com.tesla.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.tesla.vo.BoardVO;

public class BoardDAO extends DAO{
	
	//전체조회
	public List<BoardVO> boardList() {
		String sql = "select * from board order by 1";
		List<BoardVO> list = new ArrayList<>();
		connect();
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				BoardVO vo = new BoardVO();
				vo.setNum(rs.getString("board_num"));
				vo.setContent(rs.getString("board_content"));
				vo.setId(rs.getString("board_id"));
				vo.setDate(rs.getString("board_date"));
				vo.setTitle(rs.getString("board_title"));
				list.add(vo);
			} 
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return list;
		
	}
	
	//입력
	public BoardVO boardInsert(BoardVO vo) {
		String sql = "insert into board values(board_seq.nextval, ?, ?, sysdate, ?)";
		
		connect();
		try {
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, vo.getContent());
			psmt.setString(2, vo.getId());
			psmt.setString(3, vo.getTitle());
			
			int r = psmt.executeUpdate();
			System.out.println(r + "건 입력");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return vo;
	}
	
	//삭제 리턴재확인해보자~
	public BoardVO boardDelete(String num) {
		String sql = "delete from board where board_num=?";
		connect();
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, num);
			int r = psmt.executeUpdate();
			System.out.println(r + "건 삭제");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return null;
		
	}
	
	public BoardVO boardSearch(String num) {
		String sql = "select * from board where board_num=?";
		connect();
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, num);
			rs = psmt.executeQuery();
			if(rs.next()) {
				BoardVO vo = new BoardVO();
				vo.setNum(rs.getString("board_num"));
				vo.setTitle(rs.getString("board_title"));
				vo.setContent(rs.getString("board_content"));
				vo.setId(rs.getString("board_id"));
				vo.setDate(rs.getString("board_date"));
				
				return vo;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		} 
		return null;
	}
	
	public BoardVO boardUpdate(BoardVO vo) {
		String sql = "update board set board_title=?, board_content=?, board_id=? where board_num=?";
		String sql2 = "select * from board where num=?";
		connect();
		try {
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getTitle());
			psmt.setString(2, vo.getContent());
			psmt.setString(3, vo.getId());
			psmt.setString(4, vo.getNum());
			
			int r = psmt.executeUpdate();
			System.out.println(r + "업데이트");
			
			psmt = conn.prepareStatement(sql2);
			psmt.setString(1, vo.getNum());
			int r2 = psmt.executeUpdate();
			System.out.println(r2 + "한걸 셀렉");
			if(rs.next()) {
				vo.setTitle(rs.getString("board_title"));
				vo.setContent(rs.getString("board_content"));
				vo.setId(rs.getString("board_id"));
				vo.setNum(rs.getString("board_num"));
				vo.setDate(rs.getString("board_date"));
				
				return vo;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return null;
		
	}
	
}
