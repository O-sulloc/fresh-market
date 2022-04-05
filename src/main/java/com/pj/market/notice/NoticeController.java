package com.pj.market.notice;

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
import com.pj.market.util.Pager;

@Controller
@RequestMapping("/notice/*")
public class NoticeController {

	@Autowired
	private NoticeService noticeService;
	
	@ModelAttribute("board")
	public String board() {
		return "notice";
	}

	@GetMapping("list")
	public ModelAndView list(Pager pager) throws Exception {
		List<BoardDTO> ar = noticeService.list(pager);
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", ar);
		mv.setViewName("board/list");
		return mv;
	}

	@GetMapping("detail")
	public String detail(NoticeDTO noticeDTO, Model model) throws Exception {
		BoardDTO boardDTO = noticeService.detail(noticeDTO);
		model.addAttribute("dto", boardDTO);
		return "board/detail";
	}

	// add form이동
	@GetMapping("add")
	public ModelAndView add(NoticeDTO noticeDTO, Model model) throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("board/add");
		return mv;
	}

	// add DB
	@PostMapping("add")
	public ModelAndView add(NoticeDTO noticeDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = noticeService.add(noticeDTO);
		mv.setViewName("redirect:./list");
		return mv;
	}

	// delete
	@GetMapping("delete")
	public ModelAndView delete(NoticeDTO noticeDTO) throws Exception {
		int result = noticeService.delete(noticeDTO);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:./list");
		return mv;
	}

	// update form
	@GetMapping("update")
	public String update(NoticeDTO noticeDTO, Model model) throws Exception {
		BoardDTO boardDTO = noticeService.detail(noticeDTO);
		model.addAttribute("dto", noticeDTO);
		return "board/update";
	}

	// update DB
	@PostMapping("update")
	public ModelAndView update(NoticeDTO noticeDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = noticeService.update(noticeDTO);
		mv.setViewName("redirect:./list");
		return mv;
	}

}
