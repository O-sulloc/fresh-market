package com.pj.market.qna.QnaReply;

import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/qnaReply/**")
public class QnaReplyController {
	
	@Autowired
	private QnaReplyService qnaReplyService;
	
	@PostMapping("add")
	public ModelAndView add(QnaReplyDTO qnaReplyDTO)throws Exception{
		int result = qnaReplyService.add(qnaReplyDTO);
		System.out.println(result);
		ModelAndView mv = new ModelAndView();
		mv.addObject("result", result);
		mv.setViewName("common/ajaxResult");
		return mv;
	}
	
	@GetMapping("list")
	public ModelAndView list(QnaReplyDTO qnaReplyDTO)throws Exception{
		//System.out.println("list!");
		//System.out.println(qnaReplyDTO.getNum());
		List<QnaReplyDTO> ar = qnaReplyService.list(qnaReplyDTO);
		//System.out.println(ar);
		ModelAndView mv = new ModelAndView();
		mv.addObject("qnaReply", ar);
		mv.setViewName("common/qnaReply");
		return mv;
	}
	
	@PostMapping("delete")
	public ModelAndView delete(QnaReplyDTO qnaReplyDTO)throws Exception{
		System.out.println(qnaReplyDTO.getReplyNum());
		 int result = qnaReplyService.delete(qnaReplyDTO);
		 ModelAndView mv = new ModelAndView();
		 mv.setViewName("common/ajaxResult");
		 mv.addObject("result", result);
		 return mv;
	}
	
	@PostMapping("update")
	public ModelAndView update(QnaReplyDTO qnaReplyDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		System.out.println(qnaReplyDTO.getContents());
		System.out.println(qnaReplyDTO.getReplyNum());
		int result = qnaReplyService.update(qnaReplyDTO);
		System.out.println(result);
		mv.setViewName("common/ajaxResult");
		mv.addObject("result", result);
		return mv;
	}

}
