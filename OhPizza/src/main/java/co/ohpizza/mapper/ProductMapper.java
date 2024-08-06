package co.ohpizza.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import co.ohpizza.vo.CouponVO;
import co.ohpizza.vo.ProductVO;

public interface ProductMapper {
	List<ProductVO> selectList(String type);
	
	ProductVO selectProduct(@Param("type") String type, @Param("prodNo") String prodNo);

	List<ProductVO> selectGList(@Param("type")String type, @Param("grade")String grade);

	
}
