package co.ohpizza.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.ohpizza.common.DataSource;
import co.ohpizza.mapper.ProductMapper;

import co.ohpizza.vo.ProductVO;

public class ProductServiceImpl implements ProductService {
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);

	@Override
	public List<ProductVO> productList(String type) {
		return mapper.selectList(type);
	}

	@Override
	public ProductVO selectProduct(int prodNo) {
		return mapper.selectProduct(prodNo);
	}

	@Override
	public List<ProductVO> productGList(String type, String grade) {
		return mapper.selectGList(type, grade);
	}


}
