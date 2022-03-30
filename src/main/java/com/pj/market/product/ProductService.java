package com.pj.market.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductService {

	@Autowired
	ProductDAO productDAO = new ProductDAO();

	public int delete(ProductDTO productDTO) throws Exception{
		return productDAO.delete(productDTO);
	}
	
	public int add(ProductDTO productDTO) throws Exception {
		return productDAO.add(productDTO);
	}
	
	public ProductDTO detail(ProductDTO productDTO) throws Exception {
		return productDAO.detail(productDTO);
	}


	public List<ProductDTO> list() throws Exception {
		List<ProductDTO> ar = productDAO.list();
		return ar;
	}
}
