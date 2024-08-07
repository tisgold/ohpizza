package co.ohpizza.control;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.ohpizza.common.Control;
import co.ohpizza.service.CouponService;
import co.ohpizza.service.CouponServiceImpl;

public class CouponListControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("logId");
		CouponService svc = new CouponServiceImpl();
		List<String> names = svc.memberCouponList(id);
		Map<String, String> coupons = new HashMap<>();
		for(String name : names) {
			coupons.put(name, svc.getCoupon(name));
		}

		req.setAttribute("coupons", coupons);
		req.getRequestDispatcher("user/couponList.tiles").forward(req, resp);

	}

}
