package co.ohpizza.service;

import java.util.List;

import co.ohpizza.vo.MemberVO;

public interface MemberService {
	// 로그인 체크
	MemberVO loginCheck(String id, String pw);
	
	// 멤버 리스트
	List<MemberVO> memberList(String orderBy, String auth);
	
	// 회원가입
	boolean newMember(MemberVO mvo);
	
  // 김수호
	// id중복체크
	boolean duplicateId(String id);

	// 회원 정보변경
	boolean modMember(String id);

}
