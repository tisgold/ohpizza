package co.ohpizza.service;

import java.util.List;

import co.ohpizza.vo.OrderlistVO;

public interface OrderListService {

	boolean addOrderList(int orderNo, int prodNo, int cnt, int prodPrice);
	
	List<OrderlistVO> selectOrderListL(int ordNo);
}
