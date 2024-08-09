package co.ohpizza.common;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.ohpizza.mapper.OrderListMapper;
import co.ohpizza.service.OrderListService;
import co.ohpizza.service.OrderListServiceImpl;
import co.ohpizza.service.OrderService;
import co.ohpizza.service.OrderServiceImpl;
import co.ohpizza.service.ProductService;
import co.ohpizza.service.ProductServiceImpl;
import co.ohpizza.vo.OrderVO;
import co.ohpizza.vo.OrderlistVO;
import co.ohpizza.vo.ProductVO;

public class AppTest {
	public static void main(String[] args) {
		SqlSession sqlSession = //
				DataSource.getInstance().openSession(true); // <--true 써야지 자동커밋
		OrderListMapper mapper = sqlSession.getMapper(OrderListMapper.class);
		

	}
}
