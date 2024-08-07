package co.ohpizza.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import co.ohpizza.vo.OrderVO;

public interface OrderMapper {
	List<OrderVO> selectOrder(String memId);
	
	// 장바구니 처음 실행 시 오더 생성
	int addOrder(@Param("memId")String memId,
				@Param("price")String price);
	
}
