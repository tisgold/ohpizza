package co.ohpizza.vo;

import lombok.Data;

@Data
public class BoardVO {
	private int boardNo; //board_no
	private String boardTitle; //board_title
	private int boardView; //board_view
	private String boardDate; //boare_date
	private String review;// review
	private String compaint; //complaint
	private String answer; //answer
	private String memId; //mem_id
}
