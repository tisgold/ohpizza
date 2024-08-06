package co.ohpizza.vo;

import java.util.Date;

import lombok.Data;

@Data
public class MemberVO {
	    private String memId;
	    private String memPw;
	    private String memName;
	    private String phone;
	    private String address;
	    private String email;
	    private Date cDate;
	    private String authority;
	    private int point;
	    private String coupon;
	}

