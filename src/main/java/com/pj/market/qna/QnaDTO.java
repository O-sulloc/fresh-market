package com.pj.market.qna;

import java.sql.Date;

public class QnaDTO {
	
	private String state;
	private Long ref;
	private Long step;
	private Long depth;
	
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public Long getRef() {
		return ref;
	}
	public void setRef(Long ref) {
		this.ref = ref;
	}
	public Long getStep() {
		return step;
	}
	public void setStep(Long step) {
		this.step = step;
	}
	public Long getDepth() {
		return depth;
	}
	public void setDepth(Long depth) {
		this.depth = depth;
	}
	
	
}
