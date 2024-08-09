package co.ohpizza.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.ohpizza.common.DataSource;
import co.ohpizza.mapper.OrderListMapper;
import co.ohpizza.vo.OrderlistVO;

public class OrderListServiceImpl implements OrderListService{
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	OrderListMapper mapper = (OrderListMapper) sqlSession.getMapper(OrderListMapper.class);
	
	@Override
	public boolean addOrderList(int orderNo, int prodNo, int count, int prodPrice) {
		return mapper.addOrderList(orderNo, prodNo, count, prodPrice) == 1;
	}

	@Override
	public List<OrderlistVO> selectOrderListL(int ordNo) {
		// TODO Auto-generated method stub
		return mapper.selectOrderListL(ordNo);
	}

	
}
