package co.ohpizza.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.ohpizza.common.DataSource;
import co.ohpizza.mapper.OrderMapper;
import co.ohpizza.vo.OrderVO;

public class OrderServiceImpl implements OrderService {
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	OrderMapper mapper = sqlSession.getMapper(OrderMapper.class);

	@Override
	public List<OrderVO> orderList(String memId) {
		return mapper.selectOrder(memId);
	}
	

}
