package com.pj.market.qna.QnaReply;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/qnaReply/**")
public class QnaReplyController {
	
	@Autowired
	private QnaReplyService qnaReplyService;
	
	@GetMapping("list")
	public ModelAndView list(QnaReplyDTO qnaReplyDTO)throws Exception{
		List<QnaReplyDTO> ar = qnaReplyService.list(qnaReplyDTO);
		ModelAndView mv = new ModelAndView();
		mv.addObject("qnaReply", ar);
		mv.setViewName("common/qnaReply");
		return mv;
	}

}
