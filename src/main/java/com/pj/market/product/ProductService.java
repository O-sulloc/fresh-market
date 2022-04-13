package com.pj.market.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.pj.market.util.FileManager;
import com.pj.market.util.ProductPager;

@Service
public class ProductService {

	@Autowired
	ProductDAO productDAO = new ProductDAO();

	@Autowired
	private FileManager fileManager;

	public int fileDelete(ProductFileDTO productFileDTO) throws Exception {
		int result = productDAO.fileDelete(productFileDTO);

		return result;
	}

	public int update(ProductDTO productDTO, MultipartFile[] files) throws Exception {
		int result = productDAO.update(productDTO);

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

	public int delete(ProductDTO productDTO) throws Exception {
		// 상품 삭제할 때 올렸던 사진들도 hdd에서 삭제되어야 함.
		List<ProductFileDTO> ar = productDAO.listFile(productDTO);
		int result = productDAO.delete(productDTO);

		if (result > 0) {
			for (ProductFileDTO dto : ar) {
				boolean check = fileManager.remove("resources/upload/product/", dto.getFileName());
			}
		}
		return result;
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

	public List<ProductDTO> list(ProductPager productPager) throws Exception {
		productPager.makeRow();
//		System.out.println(productPager.getStartRow());
//		System.out.println(productPager.getLastRow());
		//System.out.println(productPager.getSearch());
		//System.out.println(productPager.getKeyword());
		//System.out.println(productPager.getCategory());
		Long totalCount = productDAO.total(productPager);
		productPager.makeNum(totalCount);
		List<ProductDTO> ar = productDAO.list(productPager);
		return ar;
	}
}
