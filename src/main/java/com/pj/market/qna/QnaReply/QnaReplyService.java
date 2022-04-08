package com.pj.market.qna.QnaReply;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class QnaReplyService {
	
	@Autowired
	private QnaReplyDAO qnaReplyDAO;
	
	public List<QnaReplyDTO> list(QnaReplyDTO qnaReplyDTO) throws Exception{
		return qnaReplyDAO.list(qnaReplyDTO);
	}
	
	

}
