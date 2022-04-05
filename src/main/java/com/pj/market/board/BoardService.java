package com.pj.market.board;

import java.util.List;

import com.pj.market.util.Pager;

public interface BoardService {
	
	public List<BoardDTO> list(Pager pager) throws Exception;
	
	public int add(BoardDTO boardDTO) throws Exception;
	
	public BoardDTO detail(BoardDTO boardDTO)throws Exception;
	
	public int update(BoardDTO boardDTO) throws Exception;
	
	public int delete(BoardDTO boardDTO) throws Exception;

}
