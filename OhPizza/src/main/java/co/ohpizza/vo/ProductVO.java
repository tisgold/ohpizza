package co.ohpizza.vo;

import lombok.Data;

@Data
public class ProductVO {
	private int prodNo;
	private String prodName;
	private String prodDesc;
	private int priceM;
	private int priceL;
	private String relDate;
	private String image;
	private String grade;
	private int orders;
	private String prodDetail;	
	private String recommend;
	private String prodType;
	private int starPoint;
	
}
