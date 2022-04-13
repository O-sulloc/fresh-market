package com.pj.market.cart;

public class CartDTO {
	//카트 고유번호
	private Long cartNum;
	
	//카트에 담긴 상품의 이름, 번호, 가격
	private Long no;
	private String proName;
	private Long price;
	
	//회원 아이디, 주소,
	private String id;
	private String address;
	
	//카트에 담긴 상품의 개수
	private Long count;

	//총 결제 금액
	private Long totalPrice;

	public Long getCartNum() {
		return cartNum;
	}

	public void setCartNum(Long cartNum) {
		this.cartNum = cartNum;
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

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Long getCount() {
		return count;
	}

	public void setCount(Long count) {
		this.count = count;
	}

	public Long getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(Long totalPrice) {
		this.totalPrice = totalPrice;
	}
	
	
}
