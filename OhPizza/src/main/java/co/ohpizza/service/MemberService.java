package co.ohpizza.service;

import co.ohpizza.vo.MemberVO;

public interface MemberService {
	// 로그인 체크
	MemberVO loginCheck(String id, String pw);
		
}
