package com.pj.market.cart;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.pj.market.member.MemberDTO;

@Controller
@RequestMapping("/cart/*")
public class CartController {

	@Autowired
	private CartService cartService;

	@PostMapping("update")
	public String update(CartDTO cartDTO) throws Exception {
		cartService.update(cartDTO);
		return "redirect:./list";
	}

	@GetMapping("delete")
	public String delete(CartDTO cartDTO) throws Exception {
		cartService.delete(cartDTO);
		return "redirect:./list";
	}

	@PostMapping("add")
	public String add(HttpServletRequest request, CartDTO cartDTO) throws Exception {
		MemberDTO memberDTO = (MemberDTO) request.getSession().getAttribute("member");
		String path;
		if (memberDTO == null) {
			path = "redirect: ../member/login";
		} else {
			cartService.add(cartDTO);
			path = "redirect:./list";
		}
		return path;
	}

	@GetMapping("list")
	public ModelAndView list(CartDTO cartDTO, ModelAndView mv) throws Exception {
		List<CartDTO> ar = cartService.list(cartDTO);
		mv.addObject("list", ar);
		mv.setViewName("cart/list");

		return mv;
	}
	
	@PostMapping("list")
	public String list(CartDTO cartDTO, Model model) throws Exception {
		List<CartDTO> ar = cartService.list(cartDTO);
		model.addAttribute("list", ar);
		return "cart/list";
	}
}
