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
		productDTO.setProName("밀크티");
		productDTO.setPrice(3000L);
		productDTO.setContents("밀크티야");
		productDTO.setCategory(2L);
		
		int result = productDAO.add(productDTO);
		
	}
}
