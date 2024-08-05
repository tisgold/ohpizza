package co.ohpizza.vo;

import java.util.Date;

import lombok.Data;

@Data
public class BoardVO {
	private int boardNo; //board_no
	private String boardTitle; //board_title
	private String boardContent; //board_content
	private int boardView; //board_view
	private Date boardDate; //boare_date
	private int userReview; //user_review
	private String memId; //mem_id
}
