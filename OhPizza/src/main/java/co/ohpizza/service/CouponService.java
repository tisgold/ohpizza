package co.ohpizza.service;

import java.util.List;

import co.ohpizza.vo.CouponVO;


public interface CouponService {
	//쿠폰리스트

//	CouponVO couponCList(String coupon, String discount);

	List<CouponVO> couponList();
}
