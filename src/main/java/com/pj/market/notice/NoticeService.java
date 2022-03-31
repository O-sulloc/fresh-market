package com.pj.market.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NoticeService {
	@Autowired
	private NoticeDAO noticeDAO;
	
		//list
		public List<NoticeDTO> list(NoticeDTO noticeDTO) throws Exception{
			return noticeDAO.list(noticeDTO);
		}
		
		//detail
		public NoticeDTO detail(NoticeDTO noticeDTO)throws Exception{
			return noticeDAO.detail(noticeDTO);
		}
		
		//add
		public int add(NoticeDTO noticeDTO)throws Exception{
			return noticeDAO.add(noticeDTO);
		}

}
