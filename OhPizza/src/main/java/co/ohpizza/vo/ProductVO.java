package co.ohpizza.vo;

import lombok.Data;

@Data
public class ProductVO {
	private int prodNo; // 상품번호
	private String prodName; // 상품이름
	private String prodDesc; // 상품설명
	private int priceM; // 사이즈M 가격, 또는 사이즈가 없는 상품의 가격
	private int priceL; 
	private String relDate; // 상품등록일
	private String image; // 상품 이미지 파일명
	private String grade; // 상품 종류(프리미엄, 클래식...)
	private int orders; // 총 주문수량
	private String prodDetail;
	private String recommend;
	private String prodType; // 피자, 1인피자, 세트, 사이드
	private int starPoint; // 별점
	
}
