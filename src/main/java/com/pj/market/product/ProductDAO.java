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

	public int addFile(ProductFileDTO productFileDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"addFile", productFileDTO);
	}
	
	public int delete(ProductDTO productDTO) throws Exception {
		return sqlSession.delete(NAMESPACE + "delete", productDTO);
	}

	public int add(ProductDTO productDTO) throws Exception {
		return sqlSession.insert(NAMESPACE + "add", productDTO);
	}

	public ProductDTO detail(ProductDTO productDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "detail", productDTO);
	}

	public List<ProductDTO> list() throws Exception {
		return sqlSession.selectList(NAMESPACE + "list");
	}
}
