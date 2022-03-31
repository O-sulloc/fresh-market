package com.pj.market.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.pj.market.util.FileManager;

@Service
public class ProductService {

	@Autowired
	ProductDAO productDAO = new ProductDAO();

	@Autowired
	private FileManager fileManager;

	public int delete(ProductDTO productDTO) throws Exception {
		return productDAO.delete(productDTO);
	}

	public int add(ProductDTO productDTO, MultipartFile[] files) throws Exception {
		int result = productDAO.add(productDTO);

		for (int i = 0; i < files.length; i++) {
			String fileName = fileManager.save(files[i], "resources/upload/product/");

			ProductFileDTO productFileDTO = new ProductFileDTO();
			productFileDTO.setFileName(fileName);
			productFileDTO.setOriName(files[i].getOriginalFilename());
			productFileDTO.setNo(productDTO.getNo());
			
			result = productDAO.addFile(productFileDTO);
		}
		return result;

	}

	public ProductDTO detail(ProductDTO productDTO) throws Exception {
		return productDAO.detail(productDTO);
	}

	public List<ProductDTO> list() throws Exception {
		List<ProductDTO> ar = productDAO.list();
		return ar;
	}
}
