package com.pj.market.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pj.market.util.Pager;

@Service
public class NoticeService {
	@Autowired
	private NoticeDAO noticeDAO;
	
		//list
		public List<NoticeDTO> list(Pager pager) throws Exception{
			pager.makeRow();
			pager.makeNum(noticeDAO.total(pager));
			return noticeDAO.list(pager);
		}
		
		//detail
		public NoticeDTO detail(NoticeDTO noticeDTO)throws Exception{
			return noticeDAO.detail(noticeDTO);
		}
		
		//add
		public int add(NoticeDTO noticeDTO)throws Exception{
			return noticeDAO.add(noticeDTO);
		}
		
		//delete
		public int delete(NoticeDTO noticeDTO)throws Exception{
			return noticeDAO.delete(noticeDTO);
		}
		
		//update
		public int update(NoticeDTO noticeDTO) throws Exception{
			return noticeDAO.update(noticeDTO);
		}

}
