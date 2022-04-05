package com.pj.market.qna;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.pj.market.board.BoardDTO;
import com.pj.market.util.Pager;

@Controller
@RequestMapping("/qna/*")
public class QnaController {
	
	@Autowired
	private QnaService qnaService;
	
	@ModelAttribute("board")
	public String board() {
		return "qna";
	}
	
	@GetMapping("list")
	public String list(Pager pager, Model model)throws Exception{
		List<BoardDTO> ar = qnaService.list(pager);
		model.addAttribute("list",ar);
		return "board/list";
	}
	@GetMapping("add")
	public ModelAndView add()throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("board/add");
		return mv;
		
	}
	

}
