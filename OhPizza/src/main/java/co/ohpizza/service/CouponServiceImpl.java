package co.ohpizza.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.ohpizza.common.DataSource;
import co.ohpizza.mapper.CouponMapper;
import co.ohpizza.vo.CouponVO;

public class CouponServiceImpl implements CouponService {
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	CouponMapper mapper = (CouponMapper) sqlSession.getMapper(CouponMapper.class);

	@Override
	public String getCoupon(String couponNm) {
		return mapper.selectCoupon(couponNm);
	}
	
	@Override
	public List<String> memberCouponList(String id) {
		return mapper.memberCouponList(id);
	}

	@Override
	public boolean addCoupon(CouponVO coupon) {
		return mapper.insertCoupon(coupon) == 1;
	}

}
