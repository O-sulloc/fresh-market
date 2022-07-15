package com.pj.market.member;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member/*")
public class MemberController {

	@Autowired
	private MemberService memberService;

	@PostMapping("update")
	public String update(MemberDTO memberDTO) throws Exception {
		memberService.update(memberDTO);
		return "redirect: ./mypage";
	}

	@GetMapping("update")
	public void update(HttpSession session, Model model) throws Exception {
		MemberDTO memberDTO = (MemberDTO) session.getAttribute("member");
		memberDTO = memberService.mypage(memberDTO);
		model.addAttribute("dto", memberDTO);
	}

	@PostMapping("loginCheck")
	public String loginCheck(MemberDTO memberDTO) throws Exception {
		memberDTO = memberService.login(memberDTO);

		String path = "redirect: ./"; // login failed

		if (memberDTO != null) {
			path = "redirect: ./mypage"; // login success
		}

		return path;
	}

	@GetMapping("loginCheck")
	public void loginCheck() throws Exception {
	}

	@GetMapping("mypage")
	public void mypage(HttpSession session, Model model) throws Exception {
		MemberDTO memberDTO = (MemberDTO) session.getAttribute("member");
		memberDTO = memberService.mypage(memberDTO);
		model.addAttribute("dto", memberDTO);
	}

	@GetMapping("logout")
	public String logout(HttpSession session) throws Exception {
		session.invalidate();
		// session 해제하는 코드
		return "redirect: ../";
	}

	@PostMapping("login")
	public String login(HttpSession session, MemberDTO memberDTO) throws Exception {
		memberDTO = memberService.login(memberDTO);

		String path = "redirect: ./login"; // login failed

		if (memberDTO != null) {
			session.setAttribute("member", memberDTO);
			path = "redirect: ../"; // login success
		}

		return path;
	}

	@GetMapping("login")
	public void login() throws Exception {
	}

	@PostMapping("join")
	public String join(MemberDTO memberDTO) throws Exception {
		int result = memberService.join(memberDTO);
		return "redirect: ../";
	}

	@GetMapping("join")
	public void join() throws Exception {
	}
}
