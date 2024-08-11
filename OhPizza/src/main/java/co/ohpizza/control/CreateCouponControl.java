package co.ohpizza.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.ohpizza.common.Control;
import co.ohpizza.service.CouponService;
import co.ohpizza.service.CouponServiceImpl;
import co.ohpizza.vo.CouponVO;

public class CreateCouponControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		String discount = req.getParameter("discount");
		
		CouponService svc = new CouponServiceImpl();
		CouponVO coupon = new CouponVO();
		
		String msg = null;
		coupon.setCouponName(name);
		coupon.setDiscount(Integer.parseInt(discount));
		if(svc.addCoupon(coupon)) {
			msg = "쿠폰이 등록되었습니다!";
		}
		else {
			msg = "쿠폰 등록에 오류가 발생했습니다!";
		}
		resp.sendRedirect("addCoupon.do");
	}

}
