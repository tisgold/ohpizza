package co.ohpizza.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.ohpizza.common.DataSource;
import co.ohpizza.mapper.PageMapper;
import co.ohpizza.vo.BoardVO;

public class PageServiceImpl implements PageService{
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	PageMapper mapper = sqlSession.getMapper(PageMapper.class);
	
	@Override
	public int totalCount() {
		return mapper.totalCount();
	}

	@Override
	public List<BoardVO> selectingPage(String page) {
		return mapper.selectListPaging(page);
	}
}
