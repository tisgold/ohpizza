package co.ohpizza.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.ohpizza.common.Control;
import co.ohpizza.service.CouponService;
import co.ohpizza.service.CouponServiceImpl;
import co.ohpizza.service.ProductService;
import co.ohpizza.service.ProductServiceImpl;
import co.ohpizza.vo.CouponVO;
import co.ohpizza.vo.ProductVO;

public class EventControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String prodNo = req.getParameter("prodNo");

		ProductVO pvo = new ProductVO();
		ProductService svc = new ProductServiceImpl();
//		if(svc.productList(prodNo)) {
//			resp.sendRedirect(prodNo);;
//		}
//		else {
//			resp.sendRedirect("newmenu.do?pvo=" + pvo);
//		}

		req.setAttribute("prod", pvo);
		req.getRequestDispatcher("event/event.tiles").forward(req, resp);
	}

}
//if(svc.modifyBoard(p)) {
//	resp.sendRedirect("boardList.do");
//}
//else {
//	resp.sendRedirect("updateBoard.do?bno=" + bno);
//}