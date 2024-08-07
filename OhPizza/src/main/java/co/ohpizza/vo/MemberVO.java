package co.ohpizza.vo;

import lombok.Data;

@Data
public class MemberVO {
	    private String memId; // 아이디
	    private String memPw; // 비밀번호
	    private String memName; // 이름
	    private String phone; // 전화번호
	    private String address; // 주소
	    private String email; // 이메일
	    private String cDate; // 생성일
	    private String authority; // 권한 : User, Admin
	    private int point; // 보유 포인트
	    // private String coupon; // 보유 쿠폰
	}


