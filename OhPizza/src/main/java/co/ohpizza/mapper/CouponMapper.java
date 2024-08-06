package co.ohpizza.mapper;

import java.util.List;

import co.ohpizza.vo.CouponVO;


public interface CouponMapper {
	// 쿠폰 리스트 출력
//		List<CouponVO> selectList(@Param("orderBy") String order, @Param("auth") String res);
	
	List<CouponVO> couponList();

}
