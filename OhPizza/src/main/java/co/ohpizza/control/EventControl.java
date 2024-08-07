package co.ohpizza.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.ohpizza.common.Control;
import co.ohpizza.service.CouponService;
import co.ohpizza.service.CouponServiceImpl;
import co.ohpizza.vo.CouponVO;

public class EventControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		CouponService csc = new CouponServiceImpl();
		List<CouponVO> clist = csc.couponList();
		req.setAttribute("coupon", clist);
		req.getRequestDispatcher("product/event.tiles").forward(req, resp);
		
	}
}

