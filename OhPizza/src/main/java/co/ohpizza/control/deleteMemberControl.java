package co.ohpizza.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.ohpizza.common.Control;
import co.ohpizza.service.MemberService;
import co.ohpizza.service.MemberServiceImpl;

public class deleteMemberControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		MemberService svc = new MemberServiceImpl();
		
		String msg = "";
		if(svc.delMember(id)) {
			msg = id + " 회원 삭제 완료!";
		}
		else {
			msg = "삭제 중 오류 발생!";
		}
		
		req.setAttribute("msg", msg);
		resp.sendRedirect("memberList.do");
	}

}
