package co.ohpizza.mapper;

import java.util.List;

import co.ohpizza.vo.BoardVO;

public interface BoardMapper {
	//게시판 리스트 출력
	List<BoardVO> boardList(String page);
	//페이지를 뽑기 위한 게시물 갯수 출력
	int totalPage();
	//문의 사항 리스트 출력
	List<BoardVO> inquiryList(String memId);
}
