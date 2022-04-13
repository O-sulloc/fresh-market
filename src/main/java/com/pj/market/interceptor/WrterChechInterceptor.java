package com.pj.market.interceptor;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.pj.market.board.BoardDTO;
import com.pj.market.member.MemberDTO;
import com.pj.market.qna.QnaDTO;

@Component
public class WrterChechInterceptor extends HandlerInterceptorAdapter{

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
		System.out.println("WriterCheck Interceptor PostHandle");
		
		String method = request.getMethod();
		System.out.println("Method :" + method);
		
		if(method.equals("POST")) {
			return;
		}
		
		//login 정보
		MemberDTO memberDTO = (MemberDTO)request.getSession().getAttribute("member");
				
		//writer 정보
		Map<String, Object> map = modelAndView.getModel();
		BoardDTO boardDTO = (BoardDTO)map.get("dto");
//		QnaDTO qnaDTO = (QnaDTO)map.get("dto");
		System.out.println("여긴 나오나");
//		System.out.println(boardDTO.getId());
		
//		if(!memberDTO.getId().equals(boardDTO.getId())) {
//			System.out.println("여긴어때");
//			
//			modelAndView.addObject("message", "수정 권한이 없습니다");
//			modelAndView.addObject("path", "./list");
//			modelAndView.setViewName("common/result");
//		}else {
//		}
		
	}

}
