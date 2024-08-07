package co.ohpizza.service;

import java.util.List;

import co.ohpizza.vo.OrderVO;

public interface OrderService {
	// memId의 오더 리스트
	List<OrderVO> orderList(String memId);
		
}
