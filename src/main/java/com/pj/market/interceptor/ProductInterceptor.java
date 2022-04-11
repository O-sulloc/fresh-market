package com.pj.market.interceptor;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.pj.market.member.MemberDTO;

@Component
public class ProductInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		MemberDTO memberDTO = (MemberDTO) request.getSession().getAttribute("member");

		boolean check = true;
		String admin1234 = new String("admin1234");

		if (memberDTO == null) {
			check = false;

			request.setAttribute("message", "접근할 수 없는 페이지입니다.");
			request.setAttribute("path", "../product/list");
			RequestDispatcher view = request.getRequestDispatcher("../WEB-INF/views/common/result.jsp");
			view.forward(request, response);

		} else {
			if (memberDTO.getId().equals(admin1234)) {
				System.out.println(memberDTO.getId());
				check = true;
			}else {
				check = false;
				request.setAttribute("message", "접근할 수 없는 페이지입니다.");
				request.setAttribute("path", "../product/list");
				RequestDispatcher view = request.getRequestDispatcher("../WEB-INF/views/common/result.jsp");
				view.forward(request, response);
			}
		}

		return check;
	}
}
