package com.pj.market.qna;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/qna/*")
public class QnaController {
	
	@Autowired
	private QnaService qnaService;
	
	@GetMapping("list")
	public String list(QnaDTO qnaDTO, Model model)throws Exception{
		List<QnaDTO> ar = qnaService.list(qnaDTO);
		model.addAttribute("list",ar);
		return "qna/list";
		
	}
	

}
