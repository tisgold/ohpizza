package co.ohpizza.mapper;

import java.util.List;

import co.ohpizza.vo.OrderVO;

public interface OrderMapper {
	List<OrderVO> selectOrder(String memId);
}
