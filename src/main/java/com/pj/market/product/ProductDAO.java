package com.pj.market.product;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAO {
	
	@Autowired
	private SqlSession sqlSession;

	private final String NAMESPACE = "com.pj.market.product.ProductDAO.";
	
	public List<ProductDTO> list(ProductDTO productDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"list", productDTO);
	}
}
