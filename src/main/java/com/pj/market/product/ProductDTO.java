package com.pj.market.product;

import java.util.List;

public class ProductDTO {

	private Long no;
	private String proName;
	private Long price;
	private String contents;
	private Long category;

	private List<ProductDTO> fileDTOs;
	
	public List<ProductDTO> getFileDTOs() {
		return fileDTOs;
	}

	public void setFileDTOs(List<ProductDTO> fileDTOs) {
		this.fileDTOs = fileDTOs;
	}

	public Long getNo() {
		return no;
	}

	public void setNo(Long no) {
		this.no = no;
	}

	public String getProName() {
		return proName;
	}

	public void setProName(String proName) {
		this.proName = proName;
	}

	public Long getPrice() {
		return price;
	}

	public void setPrice(Long price) {
		this.price = price;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public Long getCategory() {
		return category;
	}

	public void setCategory(Long category) {
		this.category = category;
	}

}
