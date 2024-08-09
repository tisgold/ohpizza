package co.ohpizza.service;

import java.util.List;

import co.ohpizza.vo.BoardVO;

public interface BoardService {
	//게시물 갯수를 5개 단위로 끊어 출력하는 기능
	List<BoardVO> boardList(String page);
	//멤버 아이디를 기준으로 건의사항을 출력하기 위한 기능
	List<BoardVO> inquiryList(String MemId);
	//총 게시물 갯수를 구하기 위한 기능
	int totalPage();
	//게시물 번호를 기준으로 게시물 상세 페이지로 이동하는 기능
	BoardVO boardDetail(int bno);
	//게시물 작성하는 기능
	boolean insertViewBoard(BoardVO boardInfo);
}
