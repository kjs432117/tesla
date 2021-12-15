package com.tesla.service;

import java.util.List;

import com.tesla.dao.MemberDAO;
import com.tesla.vo.MemberVO;

public class MemberService {
	//한건 입력
	
	MemberDAO dao = new MemberDAO();
	
	public MemberVO insert(MemberVO vo) {
		return dao.MemberInsert(vo);
	}
	
	public List<MemberVO> searchAll(){
		return dao.memberList();
	}
	//한건조회
	public MemberVO searchOne(String id) {
		return dao.memberSearch(id);
	}
	
	//수정
	public MemberVO update(MemberVO vo) {
		return dao.memberUpdate(vo);
	}
	//삭제
	public MemberVO delete(String id) {
		return dao.memberDelete(id);
	}
	public MemberVO login(String id, String pw) {
		return dao.LoginCheck(id, pw);
	}
}
