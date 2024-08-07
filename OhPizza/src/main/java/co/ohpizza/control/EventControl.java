package co.ohpizza.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.ohpizza.common.Control;

public class EventControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		String coupon = req.getParameter("coupon");
		coupon = coupon == null ? "coupon" : coupon;
//		CouponService csc = new CouponServicelmpl();
//		List<CouponVO> clist = csc.couponList();
		
//		req.setAttribute("coupon", clist);
		req.getRequestDispatcher("product/event.tiles").forward(req, resp);
		
	}

}
