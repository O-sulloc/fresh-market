package com.pj.market.notice;

import java.util.List;

import org.apache.ibatis.jdbc.SQL;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pj.market.board.BoardDAO;
import com.pj.market.board.BoardDTO;
import com.pj.market.util.Pager;

@Repository
public class NoticeDAO implements BoardDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.pj.market.notice.NoticeDAO.";

	// list
	public List<BoardDTO> list(Pager pager) throws Exception {
		return sqlSession.selectList(NAMESPACE + "list", pager);
	}

	// detail
	public BoardDTO detail(BoardDTO boardDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "detail", boardDTO);
	}

	// add
	public int add(BoardDTO boardDTO) throws Exception {
		return sqlSession.insert(NAMESPACE + "add", boardDTO);
	}

	// delete
	public int delete(BoardDTO boardDTO) throws Exception {
		return sqlSession.delete(NAMESPACE + "delete", boardDTO);
	}

	// update
	public int update(BoardDTO boardDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"update", boardDTO);
	}
	
	//total
	public Long total(Pager pager) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"total", pager);
	}
	
	
}
