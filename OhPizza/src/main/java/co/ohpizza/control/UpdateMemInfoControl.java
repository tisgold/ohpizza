package co.ohpizza.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.ohpizza.common.Control;
import co.ohpizza.service.MemberService;
import co.ohpizza.service.MemberServiceImpl;
import co.ohpizza.vo.MemberVO;

public class UpdateMemInfoControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8"); //한글이 깨질수도 있어서 UTF-8로 인코딩 처리
		
		String id = req.getParameter("id");
		String pw = req.getParameter("password");
		String name = req.getParameter("name");
		String phone = req.getParameter("phone");
		String email = req.getParameter("email");
		String address = req.getParameter("address");
		String address_detail = req.getParameter("address_detail");
		address += " " + address_detail;

		MemberVO mvo = new MemberVO();
		mvo.setMemId(id);
		mvo.setMemPw(pw);
		mvo.setMemName(name);
		mvo.setPhone(phone);
		mvo.setEmail(email);
		mvo.setAddress(address);
		
		MemberService svc = new MemberServiceImpl();
		if(svc.modMember(id)) {
			resp.sendRedirect("myPage.do"); // myPage로 이동
		}
		else {
			resp.sendRedirect("showMemInfo.do"); // 정보변경 화면으로 이동
		}

	}

}
