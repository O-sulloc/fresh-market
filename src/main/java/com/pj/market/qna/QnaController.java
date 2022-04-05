package com.pj.market.qna;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.pj.market.board.BoardDTO;
import com.pj.market.notice.NoticeDTO;
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
	public ModelAndView add(QnaDTO qnaDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("board/add");
		return mv;
	}
	
	@PostMapping("add")
	public String add(Model model, QnaDTO qnaDTO)throws Exception{
		int boardDTO = qnaService.add(qnaDTO);
		return "redirect:./list";
	}
	
	@GetMapping("detail")
	public String detail(QnaDTO qnaDTO, Model model)throws Exception{
		BoardDTO boardDTO = qnaService.detail(qnaDTO);
		model.addAttribute("dto", boardDTO);
		return "board/detail";
	}
	
	@GetMapping("delete")
	public ModelAndView delete(QnaDTO qnaDTO)throws Exception{
		int result = qnaService.delete(qnaDTO);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:./list");
		return mv;
	}
	
	@GetMapping("update")
	public String update(QnaDTO qnaDTO, Model model)throws Exception{
		BoardDTO boardDTO = qnaService.detail(qnaDTO);
		model.addAttribute("dto", qnaDTO);
		return "board/update";
		
	}
	
	@PostMapping("update")
	public ModelAndView update(QnaDTO qnaDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = qnaService.update(qnaDTO);
		mv.setViewName("redirect:./list");
		return mv;
	}
	

}
