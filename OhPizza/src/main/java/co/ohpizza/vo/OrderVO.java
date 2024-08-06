package co.ohpizza.vo;

import java.util.Date;

import lombok.Data;

@Data
public class OrderVO {
	private int ordNo;
	private String memId;
	private Date ordDate;
	private int price;
	private String locName;
}
