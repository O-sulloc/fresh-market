package com.pj.market.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.pj.market.util.ProductPager;

@Controller
@RequestMapping("/product/*")
public class ProductController {

	@Autowired
	private ProductService productService;

	@PostMapping("fileDelete")
	public ModelAndView fileDelete(ProductFileDTO productFileDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		System.out.println(productFileDTO.getFileNum());
		int result = productService.fileDelete(productFileDTO);

		mv.setViewName("common/ajaxResult");
		mv.addObject("result", result);
		return mv;
	}

	@PostMapping("update")
	public String update(ProductDTO productDTO, MultipartFile[] files) throws Exception {
		int result = productService.update(productDTO, files);
		return "redirect:./list";
	}

	@GetMapping("update")
	public void update(ProductDTO productDTO, Model model) throws Exception {
		productDTO = productService.detail(productDTO);
		model.addAttribute("dto", productDTO);

	}

	@GetMapping("delete")
	public String delete(ProductDTO productDTO) throws Exception {
		int result = productService.delete(productDTO);
		return "redirect:./list";
	}

	@PostMapping("add")
	public String add(ProductDTO productDTO, MultipartFile[] files) throws Exception {
		int result = productService.add(productDTO, files);
		return "redirect:./list";
	}

	// insert(add) form 가져오는
	@GetMapping("add")
	public void add() throws Exception {
	}

	@GetMapping("detail")
	public void detail(ProductDTO productDTO, Model model) throws Exception {
		System.out.println();
		productDTO = productService.detail(productDTO);
		model.addAttribute("dto", productDTO);
	}

	@GetMapping("list")
	public ModelAndView list(ModelAndView mv, ProductPager productPager) throws Exception {

		List<ProductDTO> ar = productService.list(productPager);
		mv.addObject("list", ar);
		mv.addObject("pager", productPager);
		mv.setViewName("product/list");
		return mv;
	}
}
