package co.ohpizza.mapper;

import java.util.List;

import co.ohpizza.vo.BoardVO;

public interface BoardMapper {
	//게시판 리스트 출력
	List<BoardVO> boardList(String page);
	//문의 사항 리스트 출력
	List<BoardVO> inquiryList(String memId);
	//페이지를 뽑기 위한 게시물 갯수 출력
	int totalPage();
	//게시물 상세화면 출력
	BoardVO boardDetail(int bno);
	//게시물 작성하는 기능
	int insertViewBoard(BoardVO boardInfo);
	//게시물 삭제하는 기능
	int removeBoard(int boardNo);
	//조회수를 증가시키는 기능
	int viewIncrease(int boardNo);
}
