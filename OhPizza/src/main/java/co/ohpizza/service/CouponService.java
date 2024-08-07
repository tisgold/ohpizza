package co.ohpizza.service;

import java.util.List;

import co.ohpizza.vo.CouponVO;

public interface CouponService {

	String getCoupon(String couponNm); // 쿠폰이름의 할인율 확인 
	
	List<String> memberCouponList(String id); // 멤버가 보유한 쿠폰 확인
	
	List<CouponVO> couponList(); // 쿠폰 리스트 출력
}
