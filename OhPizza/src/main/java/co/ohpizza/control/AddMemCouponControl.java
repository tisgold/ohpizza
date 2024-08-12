package co.ohpizza.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.velocity.runtime.directive.Foreach;

import co.ohpizza.common.AlertControl;
import co.ohpizza.common.Control;
import co.ohpizza.service.CouponService;
import co.ohpizza.service.CouponServiceImpl;
import co.ohpizza.vo.MemCouponVO;

public class AddMemCouponControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession(false);
		String id = (String) session.getAttribute("logId");
		String couponName = "생일쿠폰";

		MemCouponVO mcvo = new MemCouponVO();
		mcvo.setMemId(id);
		mcvo.setCouponName(couponName);

		String msg = null;
		String url = "eventsProgress.do";
		CouponService csv = new CouponServiceImpl();
		
		if (csv.addMemCoupon(mcvo)) {
			msg = "성공적으로 발행되었습니다.";
		} else {
			msg = "오류가발생했습니다.";
			url = "addMemCoupShow.do";
		}
		AlertControl.alertAndGo(resp, msg, url);

	}
}
