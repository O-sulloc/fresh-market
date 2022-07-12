package com.pj.market.member;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.pj.market.MyJunitTest;

public class MemberDAOTest extends MyJunitTest {

	@Autowired
	private MemberDAO memberDAO;

	//@Test
	public void mypageTest() throws Exception {
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setId("10");

		memberDTO = memberDAO.mypage(memberDTO);
		assertNotNull(memberDTO);
	}

	// @Test
	public void loginTest() throws Exception {
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setId("1");
		memberDTO.setPw("2");

		memberDTO = memberDAO.login(memberDTO);
		assertNotNull(memberDTO);
	}

	@Test
	public void joinTest() throws Exception {
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setId("idtest");
		memberDTO.setPw("pwtest");
		memberDTO.setName("testname");
		memberDTO.setEmail("test@test");
		memberDTO.setAddress("addresstest");

		int result = memberDAO.join(memberDTO);
		assertEquals(1, result);
	}
}
