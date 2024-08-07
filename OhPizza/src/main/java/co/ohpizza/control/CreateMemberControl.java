package co.ohpizza.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import co.ohpizza.common.Control;
import co.ohpizza.common.DataSource;
import co.ohpizza.mapper.MemberMapper;
import co.ohpizza.vo.MemberVO;

public class CreateMemberControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");  //한글이 깨질수도 있어서 UTF-8로 인코딩 처리
		SqlSession sqlSession = DataSource.getInstance().openSession(true); // <--true 써야지 자동커밋
		MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
		String loginId = req.getParameter("loginId");
		String loginPw = req.getParameter("loginPw");
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String cellphoneNo = req.getParameter("cellphoneNo");
		String address = req.getParameter("address");
		String address_detail = req.getParameter("address_detail");
		address += " " + address_detail;

		MemberVO mvo = new MemberVO();
		mvo.setMemId(loginId);
		mvo.setMemPw(loginPw);
		mvo.setMemName(name);
		mvo.setEmail(email);
		mvo.setPhone(cellphoneNo);
		mvo.setAddress(address);
		// mvo.setAuthority("User");

		if (mapper.insertMember(mvo) == 1) {
			resp.sendRedirect("productList.do");//로그인 될 경우 리스트로 이동
		} else {
			resp.sendRedirect("addMember.do"); // 로그인 실패 할 경우 회원가입 이동
		}
	}

}
