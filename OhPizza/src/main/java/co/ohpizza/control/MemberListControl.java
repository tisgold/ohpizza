package co.ohpizza.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.ohpizza.common.Control;
import co.ohpizza.service.MemberService;
import co.ohpizza.service.MemberServiceImpl;
import co.ohpizza.vo.MemberVO;

public class MemberListControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String orderBy = req.getParameter("order");
		orderBy = orderBy == null ? "mem_id" : orderBy;
		String auth = req.getParameter("auth");
		auth = auth == null ? "User" : auth;
		MemberService svc = new MemberServiceImpl();
		List<MemberVO> list = svc.memberList(orderBy, auth);

		req.setAttribute("order", orderBy);		
		req.setAttribute("auth", auth);		
		req.setAttribute("members", list);
		req.getRequestDispatcher("admin/memberList.tiles").forward(req, resp);

	}

}
