package co.ohpizza.mapper;

import java.util.List;

import co.ohpizza.vo.BoardVO;

public interface PageMapper {
	int totalCount();
	List<BoardVO> selectListPaging(String page);
}
