package com.pj.market.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pj.market.board.BoardDTO;
import com.pj.market.board.BoardService;
import com.pj.market.util.Pager;

@Service
public class NoticeService implements BoardService {
	@Autowired
	private NoticeDAO noticeDAO;
	
		//list
		public List<BoardDTO> list(Pager pager) throws Exception{
			pager.makeRow();
			pager.makeNum(noticeDAO.total(pager));
			return noticeDAO.list(pager);
		}
		
		//detail
		public BoardDTO detail(BoardDTO boardDTO)throws Exception{
			return noticeDAO.detail(boardDTO);
		}
		
		//add
		public int add(BoardDTO boardDTO)throws Exception{
			return noticeDAO.add(boardDTO);
		}
		
		//delete
		public int delete(BoardDTO boardDTO)throws Exception{
			return noticeDAO.delete(boardDTO);
		}
		
		//update
		public int update(BoardDTO boardDTO) throws Exception{
			return noticeDAO.update(boardDTO);
		}

}
