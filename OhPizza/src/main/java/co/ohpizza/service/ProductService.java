package co.ohpizza.service;

import java.util.List;

import co.ohpizza.vo.ProductVO;

public interface ProductService {
	// tbl_prod type별 리스트
	List<ProductVO> productList(String type);
	
	// 매개값으로 넘어온 prod_no 의 리스트
	ProductVO selectProduct(int prodNo);
	
	List<ProductVO> productGList(String type, String grade);
	
}
