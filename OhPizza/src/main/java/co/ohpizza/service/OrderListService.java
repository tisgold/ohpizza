package co.ohpizza.service;

import java.util.List;

import co.ohpizza.vo.OrderlistVO;

public interface OrderListService {

	boolean addOrderList(String orderNo, String prodNo, String cnt, String prodPrice, String prodName);
	
	List<OrderlistVO> selectOrderListL(int ordNo);
	
	// 장바구니 품목 숫자
	int countOrderList(int ordNo);
	
	// 장바구니 삭제
	boolean deleteOrderList(int listNo);
}
