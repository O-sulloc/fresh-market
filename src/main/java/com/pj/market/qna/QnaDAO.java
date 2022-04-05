package com.pj.market.qna;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class QnaDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.pj.market.qna.qnaDAO.";
	
	public List<QnaDTO> list(QnaDTO qnaDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"list", qnaDTO);
	}

}
