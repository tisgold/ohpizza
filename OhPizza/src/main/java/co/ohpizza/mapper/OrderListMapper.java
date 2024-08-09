package co.ohpizza.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import co.ohpizza.vo.OrderlistVO;

public interface OrderListMapper {
	int addOrderList(@Param("ordNo")int ordNo,
					@Param("prodNo")int prodNo,
					@Param("count")int count,
					@Param("prodPrice")int prodPrice);
	
	// 같은 주문번호 목록 가져오기
	
	List<OrderlistVO> selectOrderListL(int ordNo);
}
