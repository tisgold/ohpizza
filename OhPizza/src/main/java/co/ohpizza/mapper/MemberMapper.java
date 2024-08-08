package co.ohpizza.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import co.ohpizza.vo.MemberVO;

public interface MemberMapper {
	// 로그인 체크
	MemberVO selectMember(@Param("id") String id, @Param("pw") String pw); // xml에서 사용
	
	// 멤버 리스트 출력
	List<MemberVO> selectList(@Param("orderBy") String order, @Param("auth") String res);
	
	// 회원가입
	int insertMember(MemberVO mvo);
	
	// 멤버 정보변경
	int updateMember(MemberVO mvo);

}
