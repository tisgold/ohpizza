package co.ohpizza.service;

import java.util.List;

import co.ohpizza.vo.OrderVO;

public interface OrderService {
	// 장바구니 추가 클릭 시 오더 리스트 생성
	boolean addOrder(String memId, String price);
	
	// memId의 오더 리스트
	List<OrderVO> orderList(String memId);
}
