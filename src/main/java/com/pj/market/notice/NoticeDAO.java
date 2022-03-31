package com.pj.market.notice;

import java.util.List;

import org.apache.ibatis.jdbc.SQL;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class NoticeDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.pj.market.notice.NoticeDAO.";

		// list
		public List<NoticeDTO> list(NoticeDTO noticeDTO) throws Exception {
			return sqlSession.selectList(NAMESPACE+"list", noticeDTO);
		}
		
		//detail
		public NoticeDTO detail(NoticeDTO noticeDTO)throws Exception{
			return sqlSession.selectOne(NAMESPACE+"detail", noticeDTO);
		}
		
		//add
		public int add(NoticeDTO noticeDTO)throws Exception{
			return sqlSession.insert(NAMESPACE+"add", noticeDTO);
		}
		
		//delete
		public int delete(NoticeDTO noticeDTO)throws Exception{
			return sqlSession.delete(NAMESPACE+"delete", noticeDTO);
		}
}
