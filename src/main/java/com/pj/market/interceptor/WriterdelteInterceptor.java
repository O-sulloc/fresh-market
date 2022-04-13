package com.pj.market.interceptor;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.pj.market.board.BoardDTO;
import com.pj.market.member.MemberDTO;
import com.pj.market.notice.NoticeDAO;
import com.pj.market.notice.NoticeDTO;
import com.pj.market.qna.QnaDAO;
import com.pj.market.qna.QnaDTO;

@Component
public class WriterdelteInterceptor extends HandlerInterceptorAdapter {
	
	@Autowired
	private QnaDAO qnaDAO;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		boolean check = true;
		
		Long num = Long.parseLong(request.getParameter("num"));
		BoardDTO boardDTO = new QnaDTO();
		boardDTO.setNum(num);
		boardDTO = qnaDAO.detail(boardDTO);
		
		
		
		MemberDTO memberDTO = (MemberDTO)request.getSession().getAttribute("member");
		
		if(!boardDTO.getId().equals(memberDTO.getId())) {
			check = false;
			//1. foward
			request.setAttribute("message", "작성자가 아닙니다");
			request.setAttribute("path", "../member/login");
			RequestDispatcher view = request.getRequestDispatcher("../WEB-INF/views/common/result.jsp");
			view.forward(request, response);
		}
		
		return check;
	}
	
	


	
}
