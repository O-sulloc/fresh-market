package com.pj.market.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/notice/*")
public class NoticeController {
	
	@Autowired
	private NoticeService noticeService;

	  @GetMapping("list")
	  public ModelAndView list(ModelAndView mv, NoticeDTO noticeDTO)throws Exception{
		 List<NoticeDTO> ar = noticeService.list(noticeDTO);
		 mv.addObject("list", ar);
		 mv.setViewName("notice/list");
		return mv; 
	  }
	  
	  @GetMapping("detail")
	 public String detail(NoticeDTO noticeDTO, Model model)throws Exception{
		  noticeDTO = noticeService.detail(noticeDTO);
		  model.addAttribute("dto", noticeDTO);
		  return "notice/detail";
	  }
	  
	  //add form이동
	  @GetMapping("add")
	  public ModelAndView add(NoticeDTO noticeDTO, Model model)throws Exception{
		  ModelAndView mv = new ModelAndView();
		  mv.setViewName("notice/add");
		  return mv;
	  }
	  
	  //add DB
	  @PostMapping("add")
	  public ModelAndView add(NoticeDTO noticeDTO)throws Exception{
		  ModelAndView mv = new ModelAndView();
		  int result = noticeService.add(noticeDTO);
		  mv.setViewName("redirect:./list");
		  return mv;
		  
	  }

}
