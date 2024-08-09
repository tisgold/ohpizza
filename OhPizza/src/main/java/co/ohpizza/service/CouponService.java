package co.ohpizza.service;

import java.util.List;

import co.ohpizza.vo.CouponVO;

public interface CouponService {
	// 쿠폰 등록(Admin)
	boolean addCoupon(CouponVO coupon);
	
	// 쿠폰이름의 할인율 확인
	String getCoupon(String couponNm);  
	
	// 멤버가 보유한 쿠폰 확인
	List<String> memberCouponList(String id);
	
}
