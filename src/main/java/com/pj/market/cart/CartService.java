package com.pj.market.cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartService {

	@Autowired
	CartDAO cartDAO = new CartDAO();

	// 수량 업데이트
	public int update(CartDTO cartDTO) throws Exception {
		int result = cartDAO.update(cartDTO);
		return result;
	}

	// 삭제
	public int delete(CartDTO cartDTO) throws Exception {
		int result = cartDAO.delete(cartDTO);
		return result;
	}

	// 장바구니에 상품추가
	public int add(CartDTO cartDTO) throws Exception {
		int result = cartDAO.add(cartDTO);
		return result;
	}

	// 장바구니에 있는 상품 목록 불러오기
	public List<CartDTO> list(CartDTO cartDTO) throws Exception {
		List<CartDTO> ar = cartDAO.list(cartDTO);
		return ar;
	}
}
