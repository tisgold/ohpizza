package co.ohpizza.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.ohpizza.common.DataSource;
import co.ohpizza.mapper.CartMapper;
import co.ohpizza.vo.CartVO;

public class CartServiceImpl implements CartService{
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	CartMapper mapper = (CartMapper) sqlSession.getMapper(CartMapper.class);
	
	@Override
	public List<CartVO> selectCartL(String memberId) {
		// TODO Auto-generated method stub
		return mapper.selectCartL(memberId);
	}

	@Override
	public boolean addCart(CartVO cvo) {
		// TODO Auto-generated method stub
		return mapper.addCart(cvo) == 1;
	}

	@Override
	public boolean removeCart(int cartNo) {
		// TODO Auto-generated method stub
		return mapper.removeCart(cartNo) == 1;
	}

	@Override
	public boolean deleteCart(String memberId) {
		// TODO Auto-generated method stub
		return mapper.deleteCart(memberId) == 1;
	}

	@Override
	public boolean updateCart(int count, int cartNo) {
		// TODO Auto-generated method stub
		return mapper.updateCart(count, cartNo) == 1;
	}

}
