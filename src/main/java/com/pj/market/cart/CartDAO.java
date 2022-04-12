package com.pj.market.cart;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CartDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE = "com.pj.market.cart.CartDAO.";
	
	//장바구니에 상품추가
	public int add(CartDTO cartDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"add", cartDTO);
	}
	
	//장바구니에 있는 상품 목록 불러오기
	public List<CartDTO> list(CartDTO cartDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"list",cartDTO);
	}
	
	
	//장바구니에 있는 개별 상품 삭제
	public int delete(CartDTO cartDTO) throws Exception{
		return sqlSession.delete(NAMESPACE+"delete", cartDTO);
	}
	
	
	//장바구니에 있는 상품 전체 삭제
	
	//장바구니에 있는 상품 개수 업데이트
	public int update(CartDTO cartDTO) throws Exception{
		return sqlSession.update(NAMESPACE+"update", cartDTO);
	}
}
