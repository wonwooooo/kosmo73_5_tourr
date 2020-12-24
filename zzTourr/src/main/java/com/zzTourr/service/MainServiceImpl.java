package com.zzTourr.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zzTourr.dao.MainDAOImpl;
import com.zzTourr.domain.LodgeVO;

@Service("mainService")
public class MainServiceImpl implements MainService{
	
	private int totalRecCount;	
	
	private int pageTotalCount;		
	
	private int countPerPage = 8;
	
	@Autowired
	private MainDAOImpl mainDAO;
	
	//숙소 카테고리 중 카테고리가 '펜션'인 것을 검색
	public List<LodgeVO> mainLodgeList(LodgeVO vo) {
		return mainDAO.mainLodgeList(vo);
	}

	//숙소 카테고리 중 카테고리가 '호텔'인 것을 서비스단에서 페이징 적용-전체 페이지 수 계산
	public int mainLodgeListho(LodgeVO vo) {
		totalRecCount =  mainDAO.getTotalPageho();
		pageTotalCount = totalRecCount / countPerPage;
		if(totalRecCount % countPerPage != 0)pageTotalCount++;
	
		return pageTotalCount;
		
	}
	
	//숙소 카테고리 중 카테고리가 '호텔'인 것을 서비스단에서 페이징 적용-실제적으로 값 2개에 의해 띄워지는 내용
		public List<LodgeVO> mainLodgeListho(int pageNo) {
		int firstRow = (pageNo-1)*countPerPage + 1;
		int endRow = pageNo*countPerPage; 
		System.out.println(firstRow);
		System.out.println(endRow);
		HashMap map = new HashMap();
		map.put("row1", firstRow);	
		map.put("row2", endRow);
		return mainDAO.mainLodgeListho(map);
	}

		//숙소 검색 숙소명
		public List<LodgeVO> mainlodgelistserna(LodgeVO vo, String searchtext) {
			HashMap map = new HashMap();
			map.put("lov", vo);	
			map.put("searchtext", searchtext);
			System.out.println(searchtext);
			return mainDAO.mainlodgelistserna(map);
		}

		//숙소 검색 위치
		public List<LodgeVO> mainlodgelistserad(LodgeVO vo, String searchad) {
			return mainDAO.mainlodgelistserna(vo, searchad);
		}

		
}
