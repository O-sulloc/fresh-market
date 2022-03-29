package com.pj.market.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductService {

	@Autowired
	ProductDAO productDAO = new ProductDAO();
	
	public List<ProductDTO> list(ProductDTO productDTO) throws Exception{
		return productDAO.list(productDTO);
	}
}
