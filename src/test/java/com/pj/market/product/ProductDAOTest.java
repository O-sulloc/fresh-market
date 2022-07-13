package com.pj.market.product;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.pj.market.MyJunitTest;

public class ProductDAOTest extends MyJunitTest {

	@Autowired
	private ProductDAO productDAO;
	
	@Test
	public void addTest() throws Exception{
		ProductDTO productDTO = new ProductDTO();
		productDTO.setProductName("밀크티");
		productDTO.setProductPrice(3000L);
		productDTO.setProductDetail("밀크티야");
		productDTO.setCategory(2L);
		
		int result = productDAO.add(productDTO);
		
	}
}
