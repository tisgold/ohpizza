package co.ohpizza.service;

import java.util.List;

import co.ohpizza.vo.BoardVO;

public interface PageService {
	int totalCount ();
    List<BoardVO> selectingPage (String page);
}
