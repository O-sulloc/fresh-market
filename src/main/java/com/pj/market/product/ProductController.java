package com.pj.market.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/product/*")
public class ProductController {

	@Autowired
	private ProductService productService;

	@RequestMapping("delete")
	public String delete(ProductDTO productDTO) throws Exception {
		int result = productService.delete(productDTO);
		return "redirect:./list";
	}

	@PostMapping("add")
	public String add(ProductDTO productDTO) throws Exception {
		productService.add(productDTO);
		return "redirect:./list";
	}

	// insert(add) form 가져오는
	@GetMapping("add")
	public void add() throws Exception {
	}

	@GetMapping("detail")
	public void detail(ProductDTO productDTO, Model model) throws Exception {
		productDTO = productService.detail(productDTO);
		model.addAttribute("dto", productDTO);
	}

	@GetMapping("list")
	public ModelAndView list(ModelAndView mv) throws Exception {

		List<ProductDTO> ar = productService.list();
		mv.addObject("list", ar);
		mv.setViewName("product/list");
		return mv;
	}
}
