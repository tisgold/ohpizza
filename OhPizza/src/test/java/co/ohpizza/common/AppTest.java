package co.ohpizza.common;

import org.apache.ibatis.session.SqlSession;

import co.ohpizza.mapper.MemberMapper;
import co.ohpizza.vo.MemberVO;

public class AppTest {
	public static void main(String[] args) {
		SqlSession sqlSession = //
				DataSource.getInstance().openSession(true); // <--true 써야지 자동커밋
		MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);

		MemberVO mvo = new MemberVO();
		mvo.setMemId("매2");
		mvo.setMemPw("매1");
		mvo.setMemName("매11");
		mvo.setEmail("매1");
		mvo.setPhone("매1");
		mvo.setAddress("매1");
		mvo.setAuthority("매1");

		if (mapper.insertMember(mvo) == 1) {
			System.out.println("OK");
		}

	}
}
