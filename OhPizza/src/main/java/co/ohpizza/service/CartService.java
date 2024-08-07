package co.ohpizza.service;

import java.util.List;

import co.ohpizza.vo.CartVO;

public interface CartService {
	public List<CartVO> selectCartL(String memberId);
	
	public CartVO addCart(String memberId, int prodNo, int cnt);

	// 이용자가 카트에서 직접 제거한 경우 
	public void removeCart(int cartNo);
	
	// 이용자의 카트 정보를 오더 수행 후 다 없애기 
	public void deleteCart(String memberId);
}
