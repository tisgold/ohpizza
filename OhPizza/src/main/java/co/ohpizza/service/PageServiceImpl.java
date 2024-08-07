package co.ohpizza.service;

import org.apache.ibatis.session.SqlSession;

import co.ohpizza.common.DataSource;
import co.ohpizza.common.PageDTO;
import co.ohpizza.mapper.PageMapper;

public class PageServiceImpl implements PageService{
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	PageMapper mapper = sqlSession.getMapper(PageMapper.class);
	@Override
public int totalCount(int page) {
	// TODO Auto-generated method stub
	return mapper.totalCount(page);
}
}
