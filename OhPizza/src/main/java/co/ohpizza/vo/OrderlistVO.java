package co.ohpizza.vo;

import lombok.Data;

@Data
public class OrderlistVO {
	private int listNo; // 주문목록 번호
	private int ordNo; // 주문번호
	private int prodNo; // 상품번호
	private int count; // 주문개수
	private int prodPrice; // 제품 가격
}
