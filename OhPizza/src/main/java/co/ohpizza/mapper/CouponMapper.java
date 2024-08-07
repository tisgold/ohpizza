package co.ohpizza.mapper;

import java.util.List;

public interface CouponMapper {
	// 쿠폰 할인율
	String selectCoupon(String couponNm);
	
	// 회원 보유 쿠폰
	List<String> memberCouponList(String id);

}
