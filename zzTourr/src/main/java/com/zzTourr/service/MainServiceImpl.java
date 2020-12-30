package com.zzTourr.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zzTourr.dao.MainDAOImpl;
import com.zzTourr.domain.ComBoardVO;
import com.zzTourr.domain.GuideTourVO;
import com.zzTourr.domain.LodgeVO;
import com.zzTourr.domain.ProductRevboVO;
import com.zzTourr.domain.ReservationVO;
import com.zzTourr.domain.RoomVO;
import com.zzTourr.domain.UsersVO;

@Service("mainService")
public class MainServiceImpl implements MainService{
	
	private int totalRecCount;	
	
	private int pageTotalCount;		
	//���� �� ���̵� ���
	private int countPerPage = 8;
	
	//���� �� ���̵� ����
	private int countPerPageRe = 3;
	
	//�Խ���
	private int countPerPageBo = 10;
	
	@Autowired
	private MainDAOImpl mainDAO;
	
	//���� ī�װ� �� ī�װ��� '���'�� ���� �˻�-��ü ������ �� ���
	public int mainLodgeList(LodgeVO vo) {
		totalRecCount =  mainDAO.getTotalPagepen();
		pageTotalCount = totalRecCount / countPerPage;
		if(totalRecCount % countPerPage != 0)pageTotalCount++;
	
		return pageTotalCount;
	}
	
	//���� ī�װ� �� ī�װ��� '���'�� ���� ����Ʈ
	public List<LodgeVO> mainLodgeList(int pageNo) {
		int firstRow = (pageNo-1)*countPerPage + 1;
		int endRow = pageNo*countPerPage; 
		System.out.println(firstRow);
		System.out.println(endRow);
		HashMap map = new HashMap();
		map.put("row1", firstRow);	
		map.put("row2", endRow);
		return mainDAO.mainLodgeList(map);
	}
	

	//����-���-�˻�-����Ʈ
	public List<LodgeVO> mainlodgelistserpen(int pageNo, LodgeVO vo, String searchlo) {
		int firstRow = (pageNo-1)*countPerPage + 1;
		int endRow = pageNo*countPerPage; 
		HashMap map = new HashMap();
		map.put("lov", vo);	
		map.put("searchtext", searchlo);
		map.put("row1", firstRow);	
		map.put("row2", endRow);
		System.out.println(searchlo);
		return mainDAO.mainlodgelistserpen(map);
	}

	//���� ī�װ� �� ī�װ��� '���' / �˻� '����'�� ���� ���񽺴ܿ��� ����¡ ����-��ü ������ �� ���
	public int mainLodgeListpense(LodgeVO vo, String searchtext) {
		HashMap map = new HashMap();
		map.put("lov", vo);	
		map.put("searchtext", searchtext);
		System.out.println(map);
		totalRecCount =  mainDAO.getTotalPagepense(map);
		pageTotalCount = totalRecCount / countPerPage;
		if(totalRecCount % countPerPage != 0)pageTotalCount++;
	
		return pageTotalCount;
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

		//����-ȣ��-�˻�-����Ʈ
		public List<LodgeVO> mainlodgelistserna(int pageNo,  LodgeVO vo, String searchlo) {
			int firstRow = (pageNo-1)*countPerPage + 1;
			int endRow = pageNo*countPerPage; 
			HashMap map = new HashMap();
			map.put("lov", vo);	
			map.put("searchtext", searchlo);
			map.put("row1", firstRow);	
			map.put("row2", endRow);
			return mainDAO.mainlodgelistserna(map);
		}


		//���� ī�װ� �� ī�װ��� 'ȣ��' / �˻� '����'�� ���� ���񽺴ܿ��� ����¡ ����-��ü ������ �� ���
		public int mainLodgeListhose(LodgeVO vo, String searchtext) {
			HashMap map = new HashMap();
			map.put("lov", vo);	
			map.put("searchtext", searchtext);
			System.out.println(map);
			totalRecCount =  mainDAO.getTotalPagehose(map);
			pageTotalCount = totalRecCount / countPerPage;
			if(totalRecCount % countPerPage != 0)pageTotalCount++;
		
			return pageTotalCount;
			
		}

		//����-����-��ü��������
		public int mainLodgeListmo(LodgeVO vo) {
			totalRecCount =  mainDAO.getTotalPagemo();
			pageTotalCount = totalRecCount / countPerPage;
			if(totalRecCount % countPerPage != 0)pageTotalCount++;
		
			return pageTotalCount;
		}

		//����-����-��ü����Ʈ
		public List<LodgeVO> mainLodgePagemo(int pageNo) {
			int firstRow = (pageNo-1)*countPerPage + 1;
			int endRow = pageNo*countPerPage; 
			System.out.println(firstRow);
			System.out.println(endRow);
			HashMap map = new HashMap();
			map.put("row1", firstRow);	
			map.put("row2", endRow);
			return mainDAO.mainLodgeListhmo(map);
		}

		//����-����-�˻�-����Ʈ
		public List<LodgeVO> mainlodgelistsermo(int pageNo, LodgeVO vo, String searchlo) {
			int firstRow = (pageNo-1)*countPerPage + 1;
			int endRow = pageNo*countPerPage; 
			HashMap map = new HashMap();
			map.put("lov", vo);	
			map.put("searchtext", searchlo);
			map.put("row1", firstRow);	
			map.put("row2", endRow);
			return mainDAO.mainlodgelistsermo(map);
		}

		//����-����-�˻�-��ü��������
		public int mainLodgeListmose(LodgeVO vo, String searchtext) {
			HashMap map = new HashMap();
			map.put("lov", vo);	
			map.put("searchtext", searchtext);
			System.out.println(map);
			totalRecCount =  mainDAO.getTotalPagemose(map);
			pageTotalCount = totalRecCount / countPerPage;
			if(totalRecCount % countPerPage != 0)pageTotalCount++;
		
			return pageTotalCount;
			
		}

		//����-����-��ü��������
		public int mainLodgePagege(LodgeVO vo) {
			totalRecCount =  mainDAO.getTotalPagege();
			pageTotalCount = totalRecCount / countPerPage;
			if(totalRecCount % countPerPage != 0)pageTotalCount++;
		
			return pageTotalCount;
			}

		//����-����-��ü-����Ʈ
		public List<LodgeVO> mainLodgeListge(int pageNo) {
			int firstRow = (pageNo-1)*countPerPage + 1;
			int endRow = pageNo*countPerPage; 
			System.out.println(firstRow);
			System.out.println(endRow);
			HashMap map = new HashMap();
			map.put("row1", firstRow);	
			map.put("row2", endRow);
			return mainDAO.mainLodgeListge(map);
		}

		//����-����-�˻�-����Ʈ
		public List<LodgeVO> mainlodgelistserge(int pageNo, LodgeVO vo, String searchlo) {
			int firstRow = (pageNo-1)*countPerPage + 1;
			int endRow = pageNo*countPerPage; 
			HashMap map = new HashMap();
			map.put("lov", vo);	
			map.put("searchtext", searchlo);
			map.put("row1", firstRow);	
			map.put("row2", endRow);
			return mainDAO.mainlodgelistserge(map);
		}

		//����-����-�˻�-��ü��������
		public int mainLodgeListge(LodgeVO vo, String searchtext) {
			HashMap map = new HashMap();
			map.put("lov", vo);	
			map.put("searchtext", searchtext);
			System.out.println(map);
			totalRecCount =  mainDAO.getTotalPagegese(map);
			pageTotalCount = totalRecCount / countPerPage;
			if(totalRecCount % countPerPage != 0)pageTotalCount++;
		
			return pageTotalCount;
			
		}

		//�α���
		public UsersVO mainidCheckLogin(UsersVO vo) {
			return mainDAO.mainmemberLogin(vo);
		}

		//����-���̵�-����Ʈ
		public List<GuideTourVO> mainGuideList(int pageNo) {
			int firstRow = (pageNo-1)*countPerPage + 1;
			int endRow = pageNo*countPerPage; 
			System.out.println(firstRow);
			System.out.println(endRow);
			HashMap map = new HashMap();
			map.put("row1", firstRow);	
			map.put("row2", endRow);
			return mainDAO.mainGuideList(map);
		}

		//����-���̵�-��ü��������
		public int mainGuidePage(GuideTourVO vo) {
			totalRecCount =  mainDAO.getTotalPageguide();
			pageTotalCount = totalRecCount / countPerPage;
			if(totalRecCount % countPerPage != 0)pageTotalCount++;
		
			return pageTotalCount;
		}

		//���̵�-����Ʈ-�˻�
		public List<GuideTourVO> mainguidelistser(int pageNo, GuideTourVO vo, String searchlo) {
			System.out.println("//"+searchlo);
			int firstRow = (pageNo-1)*countPerPage + 1;
			int endRow = pageNo*countPerPage; 
			HashMap map = new HashMap();
			map.put("searchtext", searchlo);
			map.put("row1", firstRow);	
			map.put("row2", endRow);
			System.out.println(map);
			return mainDAO.mainGuidelistser(map);
		}

		//���̵�-��ü��������-�˻�
		public int mainGuidePageser(GuideTourVO vo, String searchtext) {
			HashMap map = new HashMap();
			map.put("lov", vo);	
			map.put("searchtext", searchtext);
			System.out.println(map);
			totalRecCount =  mainDAO.getTotalPagega(map);
			pageTotalCount = totalRecCount / countPerPage;
			if(totalRecCount % countPerPage != 0)pageTotalCount++;
		
			return pageTotalCount;
		}

		//����-��������
		public LodgeVO mainlodgedetail(LodgeVO vo) {
			return mainDAO.mainlodgedetail(vo);
		}

		//���� �������� Ŭ���� �������� ���̵���
		public List<RoomVO> mainroomlist(LodgeVO vo) {
			return mainDAO.mainroomdetail(vo);
		}

		//���� �������� Ŭ���� ���� ���̵���
		//����Ʈ
		public List<ProductRevboVO> productRevboList(int lodIdNum, int pageNo) {
			int firstRow = (pageNo-1)*countPerPageRe + 1;
			int endRow = pageNo*countPerPageRe; 
			System.out.println(firstRow);
			System.out.println(endRow);
			HashMap map = new HashMap();
			map.put("lodId", lodIdNum);
			map.put("row1", firstRow);	
			map.put("row2", endRow);
			return mainDAO.mainProRevList(map);
		}

		//���� �������� Ŭ���� ���� ���̵���
		//��������
		public int productRevboPage(int lodIdNum) {
			totalRecCount =  mainDAO.mainProRevPage(lodIdNum);
			pageTotalCount = totalRecCount / countPerPageRe;
			if(totalRecCount % countPerPageRe != 0)pageTotalCount++;
		
			return pageTotalCount;
		}

		//���̵��������-�˻�-���̵�(����)
		public GuideTourVO mainguidedetail(String programName) {
			return mainDAO.mainguidedetail(programName);
		}

		//���̵�-��������-������-����Ʈ
		public List<ProductRevboVO> productRevboListga(String programName, int pageNo) {
			int firstRow = (pageNo-1)*countPerPageRe + 1;
			int endRow = pageNo*countPerPageRe; 
			System.out.println(firstRow);
			System.out.println(endRow);
			HashMap map = new HashMap();
			map.put("programName", programName);
			map.put("row1", firstRow);	
			map.put("row2", endRow);
			return mainDAO.mainProRevListga(map);
		}

		//���̵�-��������-������-��ü��������
		public int productRevboPagega(String programName) {
			totalRecCount =  mainDAO.mainProRevPagega(programName);
			pageTotalCount = totalRecCount / countPerPageRe;
			if(totalRecCount % countPerPageRe != 0)pageTotalCount++;
		
			return pageTotalCount;
		}

		//�����Խ���-����Ʈ
		public List<ComBoardVO> freeBoardList(int pageNo) {
			int firstRow = (pageNo-1)*countPerPageBo + 1;
			int endRow = pageNo*countPerPageBo; 
			System.out.println(firstRow);
			System.out.println(endRow);
			HashMap map = new HashMap();
			map.put("row1", firstRow);	
			map.put("row2", endRow);
			return mainDAO.mainComBoardList(map);
		}

		//�����Խ���-��ü��������
		public int freeBoardList(ComBoardVO vo) {
			totalRecCount =  mainDAO.getTotalPageComBoard();
			pageTotalCount = totalRecCount / countPerPageBo;
			if(totalRecCount % countPerPageBo != 0)pageTotalCount++;
		
			return pageTotalCount;
		}

		//�����Խ���-�׷��ȣ�޾ƿ���
		public int mainGetFrGroupId() {
			return mainDAO.mainGetFrGroupIddao();
		}

		//�����Խ���-�۾���
		public int insertComBoard(ComBoardVO vo) {
			return mainDAO.insertComBoard(vo);
			
		}

		//�����Խ���-�ۺ���
		public ComBoardVO mainfreeBoardView(int articleId) {
			return mainDAO.mainfreeBoardViewdao(articleId);
		}

		//�����Խ���-�� ���� ��ȸ�� +1 ����
		public void updateFreeBoardCount(int articleId) {
			mainDAO.updateFreeBoardCountdao(articleId);
		}

		//�����Խ���-�ۼ���
		public void mainfreeBoardUpdate(ComBoardVO vo) {
			mainDAO.mainupdatefrBoard(vo);
		}

		//�����Խ���-�ۻ���
		public void mainfreeBoarddelete(ComBoardVO vo) {
			mainDAO.maindeletefrBoard(vo);
		}

		//����-��¥-����Ʈ
		public List<ReservationVO> mainlosevDate(ReservationVO vo) {
			return mainDAO.mainlosevDateDAO(vo);
		}

		//���Ǽ� üũ
		public int idCheck_Login(ReservationVO vo) {
			
			return mainDAO.roomNum(vo);
		}

		//예약하기
		public int insertRev(ReservationVO vo) {
			return mainDAO.insertRevDAO(vo);
		}

		//메인페이지-펜션
		public List<LodgeVO> mainmainLodgeList() {
			return mainDAO.mmainLodgeListpen();
		}

		//메인페이지-호텔
		public List<LodgeVO> mainmainLodgeListho() {
			return mainDAO.mmainLodgeListho();
		}

		//메인페이지-게스트하우스
		public List<LodgeVO> mainmainLodgeListge() {
			return mainDAO.mmainLodgeListge();
		}

		//메인페이지-모텔
		public List<LodgeVO> mainmainLodgePagemo() {
			return mainDAO.mmainLodgeListmo();
		}

		

}
