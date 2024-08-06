package co.ohpizza.mapper;

import org.apache.ibatis.annotations.Param;

import co.ohpizza.vo.MemberVO;

public interface MemberMapper {
	// 로그인 체크
	MemberVO selectMember(@Param("id") String id, @Param("pw") String pw); // xml에서 사용

}
