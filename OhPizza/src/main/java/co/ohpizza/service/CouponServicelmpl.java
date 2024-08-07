package co.ohpizza.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.ohpizza.common.DataSource;
import co.ohpizza.mapper.CouponMapper;
import co.ohpizza.vo.CouponVO;

public class CouponServicelmpl implements CouponService {
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	CouponMapper mapper = (CouponMapper) sqlSession.getMapper(CouponMapper.class);
//	@Override
//	public List<CouponVO> couponList(String couponlist, int discount) {
//		return mapper.couponList(coupon);
//	}



	@Override
	public List<CouponVO> couponList() {
		// TODO Auto-generated method stub
		return mapper.couponList();
	}

//	@Override
//	public List<CouponVO> couponList(String couponlist, int discount) {
//		// TODO Auto-generated method stub
//		return null;
//	}
}
