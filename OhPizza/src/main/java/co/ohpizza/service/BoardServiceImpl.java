package co.ohpizza.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.ohpizza.common.DataSource;
import co.ohpizza.mapper.BoardMapper;
import co.ohpizza.vo.BoardVO;

public class BoardServiceImpl implements BoardService {
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);

	@Override
	public List<BoardVO> boardList(String page) {
		return mapper.boardList(page);
	}

	@Override
	public List<BoardVO> inquiryList(String MemId) {
		return mapper.inquiryList(MemId);
	}

	@Override
	public int totalPage() {
		return mapper.totalPage();
	}

	@Override
	public BoardVO boardDetail(int bno) {
		return mapper.boardDetail(bno);
	}

	@Override
	public boolean insertViewBoard(BoardVO boardInfo) {
		return mapper.insertViewBoard(boardInfo) == 1;
	}
}
