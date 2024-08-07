package co.ohpizza.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import co.ohpizza.vo.CartVO;

public interface CartMapper {
	
	List<CartVO> selectCartL(String memberId);
	
	int addCart(@Param("memberId")String memberId, @Param("prodNo")int prodNo, @Param("cnt")int cnt);
	
	int removeCart(int cartNo);
	
	int deleteCart(String memberId);
}
