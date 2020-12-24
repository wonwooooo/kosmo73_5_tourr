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
	
	//���� ī�װ� �� ī�װ��� '���'�� ���� �˻�
	public List<LodgeVO> mainLodgeList(LodgeVO vo) {
		return mainDAO.mainLodgeList(vo);
	}

	//���� ī�װ� �� ī�װ��� 'ȣ��'�� ���� ���񽺴ܿ��� ����¡ ����-��ü ������ �� ���
	public int mainLodgeListho(LodgeVO vo) {
		totalRecCount =  mainDAO.getTotalPageho();
		pageTotalCount = totalRecCount / countPerPage;
		if(totalRecCount % countPerPage != 0)pageTotalCount++;
	
		return pageTotalCount;
		
	}
	
	//���� ī�װ� �� ī�װ��� 'ȣ��'�� ���� ���񽺴ܿ��� ����¡ ����-���������� �� 2���� ���� ������� ����
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

		//���� �˻� ���Ҹ�
		public List<LodgeVO> mainlodgelistserna(LodgeVO vo, String searchtext) {
			HashMap map = new HashMap();
			map.put("lov", vo);	
			map.put("searchtext", searchtext);
			System.out.println(searchtext);
			return mainDAO.mainlodgelistserna(map);
		}

		//���� �˻� ��ġ
		public List<LodgeVO> mainlodgelistserad(LodgeVO vo, String searchad) {
			return mainDAO.mainlodgelistserna(vo, searchad);
		}

		
}
